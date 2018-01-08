.class public Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerDualSIM.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$NetworkSignalChangedCallbackExt;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;
    }
.end annotation


# instance fields
.field mAirplaneIconId:I

.field private mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field private mBluetoothTetherIconId:I

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

.field mContentDescriptionWimax:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDataActive:[Z

.field mDataActivity:[I

.field mDataAndWifiStacked:Z

.field mDataConnected:[Z

.field mDataDirectionIconId:[I

.field mDataIconList:[[I

.field mDataNetType:[I

.field mDataSignalIconId:[I

.field mDataState:[I

.field mDataTypeIconId:[I

.field private mDemoDataTypeIconId:I

.field private mDemoInetCondition:I

.field private mDemoMobileLevel:I

.field private mDemoMode:Z

.field private mDemoWifiLevel:I

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

.field private mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIsWimaxEnabled:Z

.field private mLastAirplaneMode:Z

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field mLastDataDirectionIconId:[I

.field mLastDataTypeIconId:[I

.field private mLastLocale:Ljava/util/Locale;

.field mLastPhoneSignalIconId:[I

.field mLastSignalLevel:[I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private mLocale:Ljava/util/Locale;

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

.field mNetworkName:[Ljava/lang/String;

.field mNetworkNameChanged:[Z

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhone2:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:[I

.field mPhoneState:[I

.field mPhoneStateListener:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;

.field mPhoneStateListener2:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;

.field mQSDataTypeIconId:[I

.field mQSPhoneSignalIconId:[I

.field mQSWifiIconId:I

.field mServiceState:[Landroid/telephony/ServiceState;

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;",
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
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSignalsChangedCallbacks2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$NetworkSignalChangedCallbackExt;",
            ">;"
        }
    .end annotation
.end field

.field mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mToos:[Z

.field mWifiActivity:I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 194
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 77
    new-array v5, v7, [Z

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    .line 78
    new-array v5, v7, [Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v6, v5, v8

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v6, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 79
    new-array v5, v7, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneState:[I

    .line 80
    new-array v5, v7, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:[I

    .line 81
    new-array v5, v7, [I

    fill-array-data v5, :array_2

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:[I

    .line 82
    new-array v5, v7, [I

    fill-array-data v5, :array_3

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    .line 83
    new-array v5, v7, [Z

    fill-array-data v5, :array_4

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mToos:[Z

    .line 84
    new-array v5, v7, [Landroid/telephony/ServiceState;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    .line 85
    new-array v5, v7, [Landroid/telephony/SignalStrength;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 86
    new-array v5, v7, [[I

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G_SLOT1:[[I

    aget-object v6, v6, v8

    aput-object v6, v5, v8

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G_SLOT2:[[I

    aget-object v6, v6, v8

    aput-object v6, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    .line 87
    new-array v5, v7, [Ljava/lang/String;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    .line 90
    new-array v5, v7, [Z

    fill-array-data v5, :array_5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameChanged:[Z

    .line 91
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    .line 92
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    .line 93
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    .line 94
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    .line 95
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    .line 96
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    .line 98
    new-array v5, v7, [Z

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActive:[Z

    .line 99
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastSignalLevel:[I

    .line 100
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mShowPhoneRSSIForData:Z

    .line 101
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mShowAtLeastThreeGees:Z

    .line 102
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAlwaysShowCdmaRssi:Z

    .line 104
    new-array v5, v7, [Ljava/lang/String;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 108
    new-array v5, v7, [Ljava/lang/String;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    .line 116
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    .line 117
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSWifiIconId:I

    .line 118
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivity:I

    .line 121
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTethered:Z

    .line 122
    const v5, 0x10808a6

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTetherIconId:I

    .line 126
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSupported:Z

    .line 127
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    .line 128
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    .line 129
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIdle:Z

    .line 130
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    .line 131
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSignal:I

    .line 132
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxState:I

    .line 133
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxExtraState:I

    .line 137
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnected:Z

    .line 138
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnectedNetworkType:I

    .line 140
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    .line 143
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    .line 144
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastAirplaneMode:Z

    .line 146
    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLocale:Ljava/util/Locale;

    .line 147
    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastLocale:Ljava/util/Locale;

    .line 151
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 153
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalClusters:Ljava/util/ArrayList;

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalsChangedCallbacks2:Ljava/util/ArrayList;

    .line 160
    new-array v5, v7, [I

    fill-array-data v5, :array_6

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:[I

    .line 161
    new-array v5, v7, [I

    fill-array-data v5, :array_7

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:[I

    .line 162
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    .line 163
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWimaxIconId:I

    .line 164
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedSignalIconId:I

    .line 165
    new-array v5, v7, [I

    fill-array-data v5, :array_8

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:[I

    .line 166
    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedLabel:Ljava/lang/String;

    .line 170
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataAndWifiStacked:Z

    .line 559
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneStateListener:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;

    .line 565
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneStateListener2:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;

    .line 195
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 198
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 200
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    .line 202
    const v5, 0x7f090006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mShowPhoneRSSIForData:Z

    .line 203
    const v5, 0x7f090007

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mShowAtLeastThreeGees:Z

    .line 204
    const v5, 0x1110042

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAlwaysShowCdmaRssi:Z

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWifiIcons()V

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWimaxIcons()V

    .line 212
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone:Landroid/telephony/TelephonyManager;

    .line 213
    invoke-static {}, Landroid/telephony/TelephonyManager;->get2ndTm()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone2:Landroid/telephony/TelephonyManager;

    .line 214
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneStateListener:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;

    const/16 v7, 0x1e1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 220
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone2:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneStateListener2:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;

    const/16 v7, 0x1e1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 226
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHspaDataDistinguishable:Z

    .line 228
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v6, 0x7f060096

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameSeparator:Ljava/lang/String;

    .line 229
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v6, 0x104030b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault:Ljava/lang/String;

    .line 231
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v7, v6, v10

    aput-object v7, v5, v8

    .line 234
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 235
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    .line 236
    .local v2, handler:Landroid/os/Handler;
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 237
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 238
    .local v4, wifiMessenger:Landroid/os/Messenger;
    if-eqz v4, :cond_0

    .line 239
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 243
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v5, "com.pekall.intent.SIM_STATE_CHANGED2"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v5, "com.pekall.intent.SPN_STRINGS_UPDATED.phone2"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v5, "com.pekall.intent.DATA_SIM_SWITCH"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v5, "intel.intent.action.MODEM_FAST_OOS_IND"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSupported:Z

    .line 259
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSupported:Z

    if-eqz v5, :cond_1

    .line 260
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    :cond_1
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateAirplaneMode()V

    .line 269
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastLocale:Ljava/util/Locale;

    .line 270
    return-void

    .line 79
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 80
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 81
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 82
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 83
    :array_4
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 90
    nop

    :array_5
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 160
    nop

    :array_6
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 161
    :array_7
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 165
    :array_8
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma(I)Z

    move-result v0

    return v0
.end method

.method private convertToSlotId(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1831
    const-string v0, "GSM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getDataSlot()I

    move-result v0

    .line 1834
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getDataSlot()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getNetworkType(I)I
    .locals 2
    .parameter "slot"

    .prologue
    .line 1839
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getTmBySlot(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1840
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1733
    if-eqz p1, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1736
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1741
    :goto_0
    return-object v0

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    const-string v0, "(unknown)"

    goto :goto_0

    .line 1741
    :cond_0
    const-string v0, "(null)"

    goto :goto_0
.end method

.method private getSignalIconNull(I)I
    .locals 1
    .parameter "slot"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mToos:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    .line 646
    if-nez p1, :cond_0

    const v0, 0x7f0201e9

    .line 650
    :goto_0
    return v0

    .line 646
    :cond_0
    const v0, 0x7f0201f6

    goto :goto_0

    .line 650
    :cond_1
    if-nez p1, :cond_2

    const v0, 0x7f0201e7

    goto :goto_0

    :cond_2
    const v0, 0x7f0201f4

    goto :goto_0
.end method

.method private handlePrimarySimSwap()V
    .locals 4

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getDataSimId()I

    move-result v0

    .line 1539
    const-string v1, "StatusBar.NetworkControllerDualSIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataSimId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    return-void
.end method

.method private hasService(I)Z
    .locals 3
    .parameter "slot"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 607
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 612
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 622
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 617
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .parameter "info"

    .prologue
    .line 1091
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1092
    .local v3, ssid:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1102
    .end local v3           #ssid:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1096
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1097
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1098
    .local v1, net:Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1099
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1102
    .end local v1           #net:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCdma(I)Z
    .locals 1
    .parameter "slot"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:[Landroid/telephony/SignalStrength;

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

.method private updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 627
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    .line 629
    return-void

    :cond_0
    move v0, v1

    .line 627
    goto :goto_0
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1161
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1164
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnected:Z

    .line 1165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnected:Z

    if-eqz v0, :cond_1

    .line 1166
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnectedNetworkType:I

    .line 1167
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1173
    :goto_1
    const-string v0, "inetCondition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1183
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_2

    .line 1184
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTethered:Z

    .line 1190
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType(I)V

    .line 1191
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType(I)V

    .line 1192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWimaxIcons()V

    .line 1193
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon(I)V

    .line 1194
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon(I)V

    .line 1195
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength(I)V

    .line 1196
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength(I)V

    .line 1197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWifiIcons()V

    .line 1198
    return-void

    :cond_0
    move v0, v2

    .line 1164
    goto :goto_0

    .line 1169
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnectedNetworkType:I

    .line 1170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .line 1186
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTethered:Z

    goto :goto_2
.end method

.method private final updateDataIcon(I)V
    .locals 8
    .parameter "slot"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 920
    const/4 v1, 0x1

    .line 922
    .local v1, visible:Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 924
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_2

    .line 926
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:[I

    aget v2, v2, p1

    if-ne v2, v4, :cond_1

    .line 927
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_0

    .line 938
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    aget-object v2, v2, p1

    aget v0, v2, v5

    .line 941
    .local v0, iconId:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aput v0, v2, p1

    .line 974
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aput v0, v2, p1

    .line 975
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aput-boolean v1, v2, p1

    .line 976
    return-void

    .line 929
    .end local v0           #iconId:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    aget-object v2, v2, p1

    aget v0, v2, v6

    .line 930
    .restart local v0       #iconId:I
    goto :goto_0

    .line 932
    .end local v0           #iconId:I
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    aget-object v2, v2, p1

    aget v0, v2, v4

    .line 933
    .restart local v0       #iconId:I
    goto :goto_0

    .line 935
    .end local v0           #iconId:I
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    aget-object v2, v2, p1

    aget v0, v2, v7

    .line 936
    .restart local v0       #iconId:I
    goto :goto_0

    .line 943
    .end local v0           #iconId:I
    :cond_1
    const/4 v0, 0x0

    .line 944
    .restart local v0       #iconId:I
    const/4 v1, 0x0

    goto :goto_1

    .line 947
    .end local v0           #iconId:I
    :cond_2
    const/4 v0, 0x0

    .line 948
    .restart local v0       #iconId:I
    const/4 v1, 0x0

    goto :goto_1

    .line 952
    .end local v0           #iconId:I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:[I

    aget v2, v2, p1

    if-ne v2, v4, :cond_4

    .line 953
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_1

    .line 965
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    aget-object v2, v2, p1

    aget v0, v2, v5

    .line 966
    .restart local v0       #iconId:I
    goto :goto_1

    .line 955
    .end local v0           #iconId:I
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    aget-object v2, v2, p1

    aget v0, v2, v6

    .line 956
    .restart local v0       #iconId:I
    goto :goto_1

    .line 958
    .end local v0           #iconId:I
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    aget-object v2, v2, p1

    aget v0, v2, v4

    .line 959
    .restart local v0       #iconId:I
    goto :goto_1

    .line 961
    .end local v0           #iconId:I
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    aget-object v2, v2, p1

    aget v0, v2, v7

    .line 962
    .restart local v0       #iconId:I
    goto :goto_1

    .line 969
    .end local v0           #iconId:I
    :cond_4
    const/4 v0, 0x0

    .line 970
    .restart local v0       #iconId:I
    const/4 v1, 0x0

    goto :goto_1

    .line 927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 953
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType(I)V

    .line 733
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType(I)V

    .line 734
    return-void
.end method

.method private final updateDataNetType(I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f020135

    const v2, 0x7f020129

    const v6, 0x7f0600e6

    const v1, 0x7f020197

    .line 737
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    const v1, 0x7f0201a3

    aput v1, v0, p1

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget v1, v1, v2

    aput v1, v0, p1

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v2, 0x7f0600e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 889
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 890
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdmaEri(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    const v1, 0x7f0201aa

    aput v1, v0, p1

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    const v1, 0x7f020124

    aput v1, v0, p1

    .line 902
    :cond_0
    :goto_1
    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 860
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_17

    .line 861
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    if-nez p1, :cond_14

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G_SLOT1:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v2

    :goto_2
    aput-object v0, v1, p1

    .line 864
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    if-nez p1, :cond_15

    const v0, 0x7f020199

    :goto_3
    aput v0, v1, p1

    .line 867
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    if-nez p1, :cond_16

    const v0, 0x7f02012d

    :goto_4
    aput v0, v1, p1

    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v2, 0x7f0600e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 747
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_3

    .line 748
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    if-nez p1, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G_SLOT1:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v2

    :goto_5
    aput-object v0, v1, p1

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aput v4, v0, p1

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    aput v4, v0, p1

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v2, 0x7f0600e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 748
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G_SLOT2:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v2

    goto :goto_5

    .line 760
    :cond_3
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_7

    .line 761
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    if-nez p1, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E_SLOT1:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v2

    :goto_6
    aput-object v0, v1, p1

    .line 764
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    if-nez p1, :cond_5

    const v0, 0x7f020198

    :goto_7
    aput v0, v1, p1

    .line 767
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    if-nez p1, :cond_6

    const v0, 0x7f02012c

    :goto_8
    aput v0, v1, p1

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v2, 0x7f0600ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 761
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E_SLOT2:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v2

    goto :goto_6

    .line 764
    :cond_5
    const v0, 0x7f02019d

    goto :goto_7

    .line 767
    :cond_6
    const v0, 0x7f020138

    goto :goto_8

    .line 777
    :cond_7
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    if-nez p1, :cond_8

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SLOT1:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v5

    :goto_9
    aput-object v0, v4, p1

    .line 780
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    if-nez p1, :cond_9

    move v0, v1

    :goto_a
    aput v0, v4, p1

    .line 783
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    if-nez p1, :cond_a

    move v0, v2

    :goto_b
    aput v0, v1, p1

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 777
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SLOT2:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v5

    goto :goto_9

    .line 780
    :cond_9
    const v0, 0x7f02019c

    goto :goto_a

    :cond_a
    move v0, v3

    .line 783
    goto :goto_b

    .line 793
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_e

    .line 794
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    if-nez p1, :cond_b

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_SLOT1:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v2

    :goto_c
    aput-object v0, v1, p1

    .line 797
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    if-nez p1, :cond_c

    const v0, 0x7f02019a

    :goto_d
    aput v0, v1, p1

    .line 800
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    if-nez p1, :cond_d

    const v0, 0x7f02012e

    :goto_e
    aput v0, v1, p1

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v2, 0x7f0600e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 794
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_SLOT2:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v2

    goto :goto_c

    .line 797
    :cond_c
    const v0, 0x7f02019f

    goto :goto_d

    .line 800
    :cond_d
    const v0, 0x7f02013a

    goto :goto_e

    .line 806
    :cond_e
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    if-nez p1, :cond_f

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SLOT1:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v5

    :goto_f
    aput-object v0, v4, p1

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    if-nez p1, :cond_10

    :goto_10
    aput v1, v0, p1

    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    if-nez p1, :cond_11

    :goto_11
    aput v2, v0, p1

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 806
    :cond_f
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SLOT1:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v5

    goto :goto_f

    .line 809
    :cond_10
    const v1, 0x7f02019c

    goto :goto_10

    :cond_11
    move v2, v3

    .line 812
    goto :goto_11

    .line 820
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_12

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 823
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    const v1, 0x7f0201a1

    aput v1, v0, p1

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    const v1, 0x7f020104

    aput v1, v0, p1

    .line 825
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v2, 0x7f0600ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 832
    :cond_12
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_13

    .line 833
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 834
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    const v1, 0x7f0201a1

    aput v1, v0, p1

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    const v1, 0x7f020104

    aput v1, v0, p1

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v2, 0x7f0600ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 846
    :cond_13
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    const v1, 0x7f0201a2

    aput v1, v0, p1

    .line 848
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    const v1, 0x7f020107

    aput v1, v0, p1

    .line 849
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 853
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 854
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    const v1, 0x7f0201a3

    aput v1, v0, p1

    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    const v1, 0x7f020109

    aput v1, v0, p1

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v2, 0x7f0600e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 861
    :cond_14
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G_SLOT2:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v2

    goto/16 :goto_2

    .line 864
    :cond_15
    const v0, 0x7f02019e

    goto/16 :goto_3

    .line 867
    :cond_16
    const v0, 0x7f020139

    goto/16 :goto_4

    .line 873
    :cond_17
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataIconList:[[I

    if-nez p1, :cond_19

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SLOT1:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v5

    :goto_12
    aput-object v0, v4, p1

    .line 876
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    if-nez p1, :cond_18

    :cond_18
    aput v1, v0, p1

    .line 879
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    if-nez p1, :cond_1a

    :goto_13
    aput v2, v0, p1

    .line 882
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 873
    :cond_19
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SLOT2:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v5

    goto :goto_12

    :cond_1a
    move v2, v3

    .line 879
    goto :goto_13

    .line 894
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    if-nez p1, :cond_1c

    const v0, 0x7f02019b

    :goto_14
    aput v0, v1, p1

    .line 898
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    if-nez p1, :cond_1d

    const v0, 0x7f02012f

    :goto_15
    aput v0, v1, p1

    goto/16 :goto_1

    .line 895
    :cond_1c
    const v0, 0x7f0201a0

    goto :goto_14

    .line 898
    :cond_1d
    const v0, 0x7f02013b

    goto :goto_15

    .line 745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
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
        :pswitch_4
    .end packed-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 577
    const-string v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, stateExtra:Ljava/lang/String;
    const-string v3, "slot"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 579
    .local v1, slot:I
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    .line 600
    :goto_0
    return-void

    .line 582
    :cond_0
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    goto :goto_0

    .line 585
    :cond_1
    const-string v3, "LOCKED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 586
    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, lockedReason:Ljava/lang/String;
    const-string v3, "PIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 589
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    goto :goto_0

    .line 591
    :cond_2
    const-string v3, "PUK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 592
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    goto :goto_0

    .line 595
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    goto :goto_0

    .line 598
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 6
    .parameter "slot"

    .prologue
    const v4, 0x7f02013c

    const v3, 0x7f020130

    .line 656
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->isSimOff(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 658
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    if-nez p1, :cond_0

    const v2, 0x7f0201e8

    :goto_0
    aput v2, v5, p1

    .line 660
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v5, v5, p1

    aput v5, v2, p1

    .line 661
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    if-nez p1, :cond_1

    move v2, v3

    :goto_1
    aput v2, v5, p1

    .line 729
    :goto_2
    return-void

    .line 658
    :cond_0
    const v2, 0x7f0201f5

    goto :goto_0

    :cond_1
    move v2, v4

    .line 661
    goto :goto_1

    .line 663
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v5, :cond_5

    .line 665
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    if-nez p1, :cond_3

    const v2, 0x7f0201f7

    :goto_3
    aput v2, v5, p1

    .line 667
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v5, v5, p1

    aput v5, v2, p1

    .line 668
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    if-nez p1, :cond_4

    :goto_4
    aput v3, v2, p1

    goto :goto_2

    .line 665
    :cond_3
    const v2, 0x7f0201f8

    goto :goto_3

    :cond_4
    move v3, v4

    .line 668
    goto :goto_4

    .line 670
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 672
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getSignalIconNull(I)I

    move-result v5

    aput v5, v2, p1

    .line 673
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v5, v5, p1

    aput v5, v2, p1

    .line 674
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    if-nez p1, :cond_6

    :goto_5
    aput v3, v2, p1

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_5

    .line 677
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    if-nez v2, :cond_a

    .line 679
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    if-nez p1, :cond_8

    const v2, 0x7f0201dd

    :goto_6
    aput v2, v5, p1

    .line 681
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v5, v5, p1

    aput v5, v2, p1

    .line 682
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    if-nez p1, :cond_9

    :goto_7
    aput v3, v2, p1

    .line 684
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    goto :goto_2

    .line 679
    :cond_8
    const v2, 0x7f0201ea

    goto :goto_6

    :cond_9
    move v3, v4

    .line 682
    goto :goto_7

    .line 689
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAlwaysShowCdmaRssi:Z

    if-eqz v2, :cond_b

    .line 690
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastSignalLevel:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, iconLevel:I
    aput v0, v2, p1

    .line 698
    :goto_8
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 699
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdmaEri(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 700
    if-nez p1, :cond_c

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SLOT1:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v2, v3

    .line 720
    .local v1, iconList:[I
    :goto_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v3, v1, v0

    aput v3, v2, p1

    .line 721
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    if-nez p1, :cond_13

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_SLOT1:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v2, v2, v4

    aget v2, v2, v0

    :goto_a
    aput v2, v3, p1

    .line 724
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 726
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v3, v3, p1

    aput v3, v2, p1

    goto/16 :goto_2

    .line 695
    .end local v0           #iconLevel:I
    .end local v1           #iconList:[I
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastSignalLevel:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0       #iconLevel:I
    aput v0, v2, p1

    goto :goto_8

    .line 700
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SLOT2:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v2, v3

    goto :goto_9

    .line 704
    :cond_d
    if-nez p1, :cond_e

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SLOT1:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v2, v3

    .restart local v1       #iconList:[I
    :goto_b
    goto :goto_9

    .end local v1           #iconList:[I
    :cond_e
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SLOT2:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v2, v3

    goto :goto_b

    .line 710
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isNetworkRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 711
    if-nez p1, :cond_10

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SLOT1:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v2, v3

    .restart local v1       #iconList:[I
    :goto_c
    goto :goto_9

    .end local v1           #iconList:[I
    :cond_10
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SLOT2:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v2, v3

    goto :goto_c

    .line 715
    :cond_11
    if-nez p1, :cond_12

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SLOT1:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v2, v3

    .restart local v1       #iconList:[I
    :goto_d
    goto :goto_9

    .end local v1           #iconList:[I
    :cond_12
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SLOT2:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v1, v2, v3

    goto :goto_d

    .line 721
    .restart local v1       #iconList:[I
    :cond_13
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_SLOT2:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v2, v2, v4

    aget v2, v2, v0

    goto :goto_a
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1073
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 1074
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    .line 1075
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSWifiIconId:I

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWifi:Ljava/lang/String;

    .line 1088
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataAndWifiStacked:Z

    if-eqz v0, :cond_1

    .line 1080
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    .line 1081
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSWifiIconId:I

    .line 1086
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v1, 0x7f0600cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 1083
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020206

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    .line 1084
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    const v1, 0x7f020149

    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSWifiIconId:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1083
    goto :goto_2
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1038
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1039
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1040
    const-string v0, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiEnabled:Z

    .line 1069
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWifiIcons()V

    .line 1070
    return-void

    :cond_1
    move v0, v2

    .line 1040
    goto :goto_0

    .line 1043
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1044
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1046
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    .line 1047
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    .line 1049
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    .line 1051
    const-string v0, "wifiInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 1052
    if-nez v0, :cond_3

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1055
    :cond_3
    if-eqz v0, :cond_5

    .line 1056
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move v1, v2

    .line 1047
    goto :goto_2

    .line 1058
    :cond_5
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 1060
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-nez v0, :cond_0

    .line 1061
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 1063
    :cond_7
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    const-string v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiRssi:I

    .line 1065
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiRssi:I

    sget v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLevel:I

    goto :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    .prologue
    .line 1132
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 1133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 1134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 1135
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    .line 1138
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWimax:Ljava/lang/String;

    .line 1147
    :goto_1
    return-void

    .line 1137
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    goto :goto_0

    .line 1141
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v1, 0x7f0600d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 1145
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1108
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1109
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    .line 1110
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1111
    const-string v2, "4g_state"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1113
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    .line 1127
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType()V

    .line 1128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWimaxIcons()V

    .line 1129
    return-void

    :cond_1
    move v0, v1

    .line 1113
    goto :goto_0

    .line 1115
    :cond_2
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1116
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSignal:I

    goto :goto_1

    .line 1117
    :cond_3
    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1118
    const-string v2, "WimaxState"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxState:I

    .line 1120
    const-string v2, "WimaxStateDetail"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxExtraState:I

    .line 1123
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    .line 1125
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxExtraState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v2, v1

    .line 1123
    goto :goto_2

    :cond_5
    move v0, v1

    .line 1125
    goto :goto_3
.end method


# virtual methods
.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 308
    return-void
.end method

.method public addNetworkSignalChangedCallbackExt(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$NetworkSignalChangedCallbackExt;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalsChangedCallbacks2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->notifySignalsChangedCallbacks2(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$NetworkSignalChangedCallbackExt;)V

    .line 313
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;)V
    .locals 1
    .parameter "cluster"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;)V

    .line 303
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1753
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoMode:Z

    if-nez v0, :cond_1

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1754
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoMode:Z

    .line 1755
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLevel:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoWifiLevel:I

    .line 1756
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoInetCondition:I

    .line 1757
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoDataTypeIconId:I

    .line 1758
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastSignalLevel:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoMobileLevel:I

    .line 1828
    :cond_0
    return-void

    .line 1759
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoMode:Z

    if-eqz v0, :cond_2

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1760
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoMode:Z

    .line 1761
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;

    .line 1762
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;)V

    goto :goto_0

    .line 1764
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoMode:Z

    if-eqz v0, :cond_0

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1765
    const-string v0, "airplane"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1766
    if-eqz v0, :cond_3

    .line 1767
    const-string v4, "show"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1768
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;

    .line 1769
    const v6, 0x7f0201d7

    invoke-interface {v0, v4, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_1

    .line 1772
    :cond_3
    const-string v0, "fully"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1773
    if-eqz v0, :cond_4

    .line 1774
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoInetCondition:I

    .line 1776
    :cond_4
    const-string v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1777
    if-eqz v0, :cond_9

    .line 1778
    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1779
    const-string v0, "level"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1780
    if-eqz v0, :cond_5

    .line 1781
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v3

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoWifiLevel:I

    .line 1784
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoWifiLevel:I

    if-gez v0, :cond_8

    const v0, 0x7f020206

    move v1, v0

    .line 1786
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;

    .line 1787
    const-string v6, "Demo"

    invoke-interface {v0, v4, v1, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    goto :goto_5

    :cond_6
    move v0, v2

    .line 1774
    goto :goto_2

    .line 1781
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 1784
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoWifiLevel:I

    aget v0, v0, v1

    move v1, v0

    goto :goto_4

    .line 1793
    :cond_9
    const-string v0, "mobile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1794
    if-eqz v0, :cond_0

    .line 1795
    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1796
    const-string v0, "datatype"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1797
    if-eqz v0, :cond_a

    .line 1798
    const-string v4, "1x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const v0, 0x7f0201a1

    :goto_6
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoDataTypeIconId:I

    .line 1810
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 1811
    const-string v4, "level"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1812
    if-eqz v4, :cond_b

    .line 1813
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    :goto_7
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoMobileLevel:I

    .line 1816
    :cond_b
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoMobileLevel:I

    if-gez v2, :cond_15

    const v2, 0x7f0201db

    .line 1818
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;

    .line 1819
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoDataTypeIconId:I

    const-string v4, "Demo"

    const-string v5, "Demo"

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1798
    :cond_c
    const-string v4, "3g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const v0, 0x7f0201a2

    goto :goto_6

    :cond_d
    const-string v4, "4g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v0, 0x7f0201a3

    goto :goto_6

    :cond_e
    const-string v4, "e"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v0, 0x7f0201a5

    goto :goto_6

    :cond_f
    const-string v4, "g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v0, 0x7f0201a6

    goto :goto_6

    :cond_10
    const-string v4, "h"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const v0, 0x7f0201a7

    goto :goto_6

    :cond_11
    const-string v4, "lte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const v0, 0x7f0201a9

    goto :goto_6

    :cond_12
    const-string v4, "roam"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0201aa

    goto/16 :goto_6

    :cond_13
    move v0, v2

    goto/16 :goto_6

    .line 1813
    :cond_14
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v0, v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_7

    .line 1816
    :cond_15
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoInetCondition:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoMobileLevel:I

    aget v2, v0, v2

    goto/16 :goto_8
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1543
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    const-string v0, "  hasService(0)="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1550
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1551
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1553
    const-string v0, "  mDataConnected[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1554
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1555
    const-string v0, "  mSimState[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1557
    const-string v0, "  mPhoneState[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneState:[I

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1559
    const-string v0, "  mDataState[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:[I

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1561
    const-string v0, "  mDataActivity[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1563
    const-string v0, "  mDataNetType[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:[I

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1565
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:[I

    aget v0, v0, v3

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    const-string v0, "  mServiceState[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1569
    const-string v0, "  mSignalStrength[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1571
    const-string v0, "  mLastSignalLevel[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastSignalLevel:[I

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1573
    const-string v0, "  mNetworkName[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1575
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1577
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1578
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    const-string v0, "  mPhoneSignalIconId[0]=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1580
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1581
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1583
    const-string v0, "  mQSPhoneSignalIconId[0]=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1585
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    const-string v0, "  mDataDirectionIconId[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1589
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    const-string v0, "  mDataSignalIconId[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1593
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1594
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1595
    const-string v0, "  mDataTypeIconId[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1597
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    const-string v0, "  mQSDataTypeIconId[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1600
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1601
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1605
    const-string v0, "  hasService(1)="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1606
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1607
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1608
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1609
    const-string v0, "  mDataConnected[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1610
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1611
    const-string v0, "  mSimState[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1613
    const-string v0, "  mPhoneState[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneState:[I

    aget v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1615
    const-string v0, "  mDataState[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:[I

    aget v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1617
    const-string v0, "  mDataActivity[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1618
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    aget v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1619
    const-string v0, "  mDataNetType[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:[I

    aget v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1621
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:[I

    aget v0, v0, v4

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    const-string v0, "  mServiceState[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1625
    const-string v0, "  mSignalStrength[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1626
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1627
    const-string v0, "  mLastSignalLevel[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastSignalLevel:[I

    aget v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1629
    const-string v0, "  mNetworkName[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1632
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1633
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1634
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1635
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1637
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1639
    const-string v0, "  mQSPhoneSignalIconId[1]=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1640
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    aget v0, v0, v4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    const-string v0, "  mDataDirectionIconId[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1643
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1644
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1645
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aget v0, v0, v4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1646
    const-string v0, "  mDataSignalIconId[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1647
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1648
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    aget v0, v0, v4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1650
    const-string v0, "  mDataTypeIconId[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1652
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1653
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v0, v0, v4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1654
    const-string v0, "  mQSDataTypeIconId[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1655
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1656
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    aget v0, v0, v4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1661
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1662
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1663
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1664
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1665
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1666
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1667
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1668
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1669
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1670
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1672
    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1675
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1677
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 1678
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1679
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1680
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1681
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1682
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1684
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1691
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1693
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1695
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1697
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    const-string v0, "  mLastPhoneSignalIconId[0]=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1699
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1700
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1701
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    const-string v0, "  mLastDataDirectionIconId[0]=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1703
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1704
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1705
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    const-string v0, "  mLastPhoneSignalIconId[1]=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1707
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:[I

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1708
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1709
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:[I

    aget v0, v0, v4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    const-string v0, "  mLastDataDirectionIconId[1]=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1711
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:[I

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1712
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1713
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:[I

    aget v0, v0, v4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1715
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1716
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1717
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1718
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1719
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1720
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1721
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1722
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1724
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1725
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1726
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1729
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    return-void

    .line 1544
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method getDataSimId()I
    .locals 3

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data_sim"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1534
    return v0
.end method

.method getDataSlot()I
    .locals 1

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getDataSimId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    return v0
.end method

.method isCdmaEri(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    .line 905
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    .line 906
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 907
    .local v0, iconIndex:I
    if-eq v0, v2, :cond_1

    .line 908
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 909
    .local v1, iconMode:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 915
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

    .line 281
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isEmergencyOnly(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isEmergencyOnly(I)Z

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
    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

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
    .locals 3
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    .line 632
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getDataSimId()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getDataSimId()I

    move-result v1

    if-ne v1, v2, :cond_3

    if-ne p1, v2, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 636
    .local v0, ret:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 641
    :cond_2
    return v0

    .line 632
    .end local v0           #ret:Z
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhone2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 17
    .parameter "cb"

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiEnabled:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    if-nez v1, :cond_5

    :cond_0
    const/4 v2, 0x1

    .line 350
    .local v2, wifiEnabled:Z
    :goto_0
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    .line 352
    .local v7, wifiDesc:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivity:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    :cond_1
    const/4 v4, 0x1

    .line 355
    .local v4, wifiIn:Z
    :goto_2
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivity:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    :cond_2
    const/4 v5, 0x1

    .line 358
    .local v5, wifiOut:Z
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSWifiIconId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    :cond_3
    const/4 v13, 0x1

    .line 363
    .local v13, mobileIn:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    :cond_4
    const/4 v14, 0x1

    .line 365
    .local v14, mobileOut:Z
    :goto_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isEmergencyOnly(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 366
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    const/4 v3, 0x0

    aget v10, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    const/4 v3, 0x0

    aget v12, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v1, v3

    const/16 v16, 0x0

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 383
    return-void

    .line 349
    .end local v2           #wifiEnabled:Z
    .end local v4           #wifiIn:Z
    .end local v5           #wifiOut:Z
    .end local v7           #wifiDesc:Ljava/lang/String;
    .end local v13           #mobileIn:Z
    .end local v14           #mobileOut:Z
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 350
    .restart local v2       #wifiEnabled:Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 352
    .restart local v7       #wifiDesc:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 355
    .restart local v4       #wifiIn:Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 361
    .restart local v5       #wifiOut:Z
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 363
    .restart local v13       #mobileIn:Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    .line 370
    .restart local v14       #mobileOut:Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    if-eqz v1, :cond_c

    .line 372
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    const/4 v3, 0x0

    aget v10, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    const/4 v3, 0x0

    aget v12, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v16, v1, v3

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 377
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    const/4 v3, 0x0

    aget v10, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    const/4 v3, 0x0

    aget v12, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v16, v1, v3

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method notifySignalsChangedCallbacks2(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$NetworkSignalChangedCallbackExt;)V
    .locals 10
    .parameter "cb"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    aget v0, v0, v9

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    aget v0, v0, v9

    if-ne v0, v9, :cond_2

    :cond_0
    move v5, v9

    .line 389
    .local v5, mobileIn:Z
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    aget v0, v0, v9

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    aget v0, v0, v9

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_1
    move v6, v9

    .line 391
    .local v6, mobileOut:Z
    :goto_1
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isEmergencyOnly(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    aget v2, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v3, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    aget v4, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v0, v9

    const/4 v8, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$NetworkSignalChangedCallbackExt;->onMobileDataSignalChanged2(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_2
    return-void

    .end local v5           #mobileIn:Z
    .end local v6           #mobileOut:Z
    :cond_2
    move v5, v1

    .line 387
    goto :goto_0

    .restart local v5       #mobileIn:Z
    :cond_3
    move v6, v1

    .line 389
    goto :goto_1

    .line 396
    .restart local v6       #mobileOut:Z
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    aget v2, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v3, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    aget v4, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    aget-object v8, v0, v9

    move-object v0, p1

    move v1, v9

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$NetworkSignalChangedCallbackExt;->onMobileDataSignalChanged2(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 403
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    aget v2, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v3, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    aget v4, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v0, v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    aget-object v8, v0, v9

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$NetworkSignalChangedCallbackExt;->onMobileDataSignalChanged2(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 416
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWifiState(Landroid/content/Intent;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.pekall.intent.SIM_STATE_CHANGED2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    :cond_3
    const-string v0, "slot"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 425
    .local v1, slot:I
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateSimState(Landroid/content/Intent;)V

    .line 426
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength(I)V

    .line 427
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType(I)V

    .line 428
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon(I)V

    .line 429
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto :goto_0

    .line 430
    .end local v1           #slot:I
    :cond_4
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.pekall.intent.SPN_STRINGS_UPDATED.phone2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 432
    :cond_5
    const-string v0, "slot"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 433
    .restart local v1       #slot:I
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

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto :goto_0

    .line 438
    .end local v1           #slot:I
    :cond_6
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 440
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateConnectivity(Landroid/content/Intent;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto :goto_0

    .line 442
    :cond_8
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto :goto_0

    .line 444
    :cond_9
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateAirplaneMode()V

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto/16 :goto_0

    .line 447
    :cond_a
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 450
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateWimaxState(Landroid/content/Intent;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto/16 :goto_0

    .line 452
    :cond_c
    const-string v0, "com.pekall.intent.DATA_SIM_SWITCH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 453
    const-string v0, "data_sim_switching_stage"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, stage:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 456
    const-string v0, "switch_end"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 457
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->handlePrimarySimSwap()V

    goto/16 :goto_0

    .line 458
    :cond_d
    const-string v0, "phone_creation_done"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->handlePrimarySimSwap()V

    goto/16 :goto_0

    .line 462
    .end local v8           #stage:Ljava/lang/String;
    :cond_e
    const-string v0, "intel.intent.action.MODEM_FAST_OOS_IND"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 464
    .local v7, phoneName:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->convertToSlotId(Ljava/lang/String;)I

    move-result v1

    .line 465
    .restart local v1       #slot:I
    const-string v0, "state"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 466
    .local v9, toos:Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mToos:[Z

    aget-boolean v0, v0, v1

    if-eq v9, v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mToos:[Z

    aput-boolean v9, v0, v1

    .line 469
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength(I)V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;)V
    .locals 11
    .parameter "cluster"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 316
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    .line 323
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    if-eqz v0, :cond_4

    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v2, v0, v5

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v3, v0, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_0

    :cond_2
    move v0, v5

    .line 317
    goto :goto_1

    .line 325
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    goto :goto_2

    .line 333
    :cond_4
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v2, v0, v5

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v3, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v4, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v5, v0, v5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v6, v0, v1

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v7, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v8, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v9, v0, v1

    move-object v0, p1

    move v1, v10

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;->setMobileDataIndicators2(ZIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    aget v2, v0, v5

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    aget v6, v0, v1

    goto :goto_5
.end method

.method refreshViews()V
    .locals 15

    .prologue
    const/4 v5, -0x1

    const/16 v13, 0x8

    const v12, 0x7f06010f

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1204
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    .line 1207
    const-string v3, ""

    .line 1208
    const-string v0, ""

    .line 1209
    const-string v0, ""

    .line 1211
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isEmergencyOnly(I)Z

    move-result v8

    .line 1212
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isEmergencyOnly(I)Z

    move-result v1

    .line 1214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getDataSlot()I

    move-result v9

    .line 1215
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    if-nez v2, :cond_4

    .line 1216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    aput v4, v2, v4

    aput v4, v1, v4

    aput v4, v0, v4

    .line 1217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    aput v4, v2, v7

    aput v4, v1, v7

    aput v4, v0, v7

    .line 1218
    const-string v0, ""

    move-object v1, v3

    move v2, v4

    .line 1277
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-eqz v3, :cond_14

    .line 1278
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 1279
    const v1, 0x7f060110

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1288
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    .line 1289
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWifi:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move v3, v2

    move-object v2, v1

    .line 1298
    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTethered:Z

    if-eqz v5, :cond_0

    .line 1299
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v3, 0x7f060097

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1300
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTetherIconId:I

    .line 1301
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v10, 0x7f0600ef

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1305
    :cond_0
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnectedNetworkType:I

    const/16 v10, 0x9

    if-ne v5, v10, :cond_16

    move v5, v7

    .line 1306
    :goto_3
    if-eqz v5, :cond_1

    .line 1307
    const v2, 0x7f06011b

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1310
    :cond_1
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v10, v10, v4

    if-eqz v10, :cond_2

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z

    move-result v10

    if-nez v10, :cond_19

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v10

    if-nez v10, :cond_19

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v10, v10, v7

    if-eqz v10, :cond_3

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z

    move-result v10

    if-nez v10, :cond_19

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v10

    if-nez v10, :cond_19

    .line 1316
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v10, 0x7f0600f0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v4

    .line 1318
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContext:Landroid/content/Context;

    const v10, 0x7f0600f0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    .line 1320
    const v5, 0x7f0201d7

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneIconId:I

    .line 1321
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    aput v4, v11, v4

    aput v4, v10, v4

    aput v4, v9, v4

    aput v4, v5, v4

    .line 1322
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    aput v4, v11, v7

    aput v4, v10, v7

    aput v4, v9, v7

    aput v4, v5, v7

    .line 1323
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSPhoneSignalIconId:[I

    aput v4, v9, v7

    aput v4, v5, v4

    .line 1326
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-eqz v5, :cond_17

    .line 1328
    const-string v0, ""

    move v5, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 1405
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 1406
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_5

    .line 1228
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v2, v2, v7

    if-eqz v2, :cond_9

    .line 1229
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_6

    .line 1230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 1233
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_7

    .line 1234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_8

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_6
    move v2, v4

    move v1, v5

    .line 1261
    :goto_7
    const/4 v10, 0x2

    if-ge v2, v10, :cond_12

    .line 1262
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v10, v10, v2

    if-eqz v10, :cond_11

    move v1, v2

    .line 1261
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1240
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mConnected:Z

    if-nez v0, :cond_a

    if-nez v8, :cond_a

    if-eqz v1, :cond_10

    .line 1241
    :cond_a
    const-string v0, ""

    .line 1242
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v8, :cond_c

    .line 1244
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 1247
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v1, :cond_e

    .line 1248
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1251
    :cond_e
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_f

    if-eqz v1, :cond_8

    .line 1252
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    aget-object v0, v0, v7

    goto :goto_6

    .line 1255
    :cond_10
    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1265
    :cond_11
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aput v4, v10, v2

    .line 1266
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    aput v4, v10, v2

    goto :goto_8

    .line 1270
    :cond_12
    if-eq v1, v5, :cond_39

    .line 1271
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    aget v2, v2, v1

    .line 1273
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v1, v3, v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    .line 1281
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_1

    .line 1291
    :cond_14
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_15

    .line 1292
    const-string v3, ""

    move-object v14, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v14

    goto/16 :goto_2

    .line 1294
    :cond_15
    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v14

    goto/16 :goto_2

    :cond_16
    move v5, v4

    .line 1305
    goto/16 :goto_3

    .line 1330
    :cond_17
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_18

    .line 1332
    const-string v1, ""

    .line 1338
    :goto_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1339
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    aget v3, v3, v4

    move v5, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_4

    .line 1334
    :cond_18
    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1335
    goto :goto_9

    .line 1341
    :cond_19
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v10, v10, v4

    if-nez v10, :cond_38

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataConnected:[Z

    aget-boolean v10, v10, v7

    if-nez v10, :cond_38

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiConnected:Z

    if-nez v10, :cond_38

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mBluetoothTethered:Z

    if-nez v10, :cond_38

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxConnected:Z

    if-nez v10, :cond_38

    if-nez v5, :cond_38

    .line 1344
    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1346
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataSignalIconId:[I

    aget v2, v2, v9

    .line 1348
    :goto_a
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v3, v3, v9

    :goto_b
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move v6, v4

    .line 1351
    :goto_c
    const/4 v3, 0x2

    if-ge v6, v3, :cond_37

    .line 1352
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1353
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdmaEri(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1354
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    const v9, 0x7f0201aa

    aput v9, v3, v6

    .line 1355
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    const v9, 0x7f020124

    aput v9, v3, v6

    .line 1351
    :cond_1a
    :goto_d
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_c

    .line 1346
    :cond_1b
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    goto :goto_a

    .line 1348
    :cond_1c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_b

    .line 1357
    :cond_1d
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isNetworkRoaming(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1358
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    if-nez v6, :cond_1e

    const v3, 0x7f02019b

    :goto_e
    aput v3, v9, v6

    .line 1361
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mQSDataTypeIconId:[I

    if-nez v6, :cond_1f

    const v3, 0x7f02012f

    :goto_f
    aput v3, v9, v6

    goto :goto_d

    .line 1358
    :cond_1e
    const v3, 0x7f0201a0

    goto :goto_e

    .line 1361
    :cond_1f
    const v3, 0x7f02013b

    goto :goto_f

    .line 1409
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:[I

    aget v0, v0, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v6, v6, v4

    if-ne v0, v6, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:[I

    aget v0, v0, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v6, v6, v7

    if-ne v0, v6, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:[I

    aget v0, v0, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aget v6, v6, v4

    if-ne v0, v6, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:[I

    aget v0, v0, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aget v6, v6, v7

    if-ne v0, v6, :cond_21

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    if-ne v0, v6, :cond_21

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWimaxIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    if-ne v0, v6, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:[I

    aget v0, v0, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v6, v6, v4

    if-ne v0, v6, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:[I

    aget v0, v0, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v6, v6, v7

    if-ne v0, v6, :cond_21

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastAirplaneMode:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    if-ne v0, v6, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameChanged:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameChanged:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_23

    .line 1422
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;

    .line 1423
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;)V

    goto :goto_10

    .line 1425
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalsChangedCallbacks2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$NetworkSignalChangedCallbackExt;

    .line 1426
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->notifySignalsChangedCallbacks2(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$NetworkSignalChangedCallbackExt;)V

    goto :goto_11

    .line 1430
    :cond_23
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastAirplaneMode:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    if-eq v0, v6, :cond_24

    .line 1431
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastAirplaneMode:Z

    .line 1434
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameChanged:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_25

    .line 1435
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameChanged:[Z

    aput-boolean v4, v0, v4

    .line 1438
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameChanged:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_26

    .line 1439
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameChanged:[Z

    aput-boolean v4, v0, v7

    .line 1443
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:[I

    aget v0, v0, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v6, v6, v4

    if-eq v0, v6, :cond_27

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v6, v6, v4

    aput v6, v0, v4

    .line 1448
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:[I

    aget v0, v0, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v6, v6, v7

    if-eq v0, v6, :cond_28

    .line 1449
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastPhoneSignalIconId:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mPhoneSignalIconId:[I

    aget v6, v6, v7

    aput v6, v0, v7

    .line 1452
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:[I

    aget v0, v0, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aget v6, v6, v4

    if-eq v0, v6, :cond_29

    .line 1453
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aget v6, v6, v4

    aput v6, v0, v4

    .line 1456
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:[I

    aget v0, v0, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aget v6, v6, v7

    if-eq v0, v6, :cond_2a

    .line 1457
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataDirectionIconId:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataDirectionIconId:[I

    aget v6, v6, v7

    aput v6, v0, v7

    .line 1461
    :cond_2a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    if-eq v0, v6, :cond_2b

    .line 1462
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWifiIconId:I

    .line 1466
    :cond_2b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWimaxIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    if-eq v0, v6, :cond_2c

    .line 1467
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWimaxIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastWimaxIconId:I

    .line 1470
    :cond_2c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedSignalIconId:I

    if-eq v0, v5, :cond_2d

    .line 1471
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedSignalIconId:I

    .line 1475
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:[I

    aget v0, v0, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v5, v5, v4

    if-eq v0, v5, :cond_2e

    .line 1476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v5, v5, v4

    aput v5, v0, v4

    .line 1479
    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:[I

    aget v0, v0, v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v5, v5, v7

    if-eq v0, v5, :cond_2f

    .line 1480
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastDataTypeIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataTypeIconId:[I

    aget v5, v5, v7

    aput v5, v0, v7

    .line 1484
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1485
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mLastCombinedLabel:Ljava/lang/String;

    .line 1486
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1487
    :goto_12
    if-ge v5, v6, :cond_30

    .line 1488
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1489
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1487
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_12

    .line 1494
    :cond_30
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 1495
    :goto_13
    if-ge v3, v5, :cond_32

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1497
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1499
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1495
    :goto_14
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13

    .line 1501
    :cond_31
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14

    .line 1506
    :cond_32
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v4

    .line 1507
    :goto_15
    if-ge v2, v3, :cond_34

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1509
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1511
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1507
    :goto_16
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    .line 1513
    :cond_33
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16

    .line 1518
    :cond_34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v4

    .line 1519
    :goto_17
    if-ge v2, v3, :cond_36

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1521
    if-nez v8, :cond_35

    .line 1522
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1519
    :goto_18
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_17

    .line 1524
    :cond_35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1525
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18

    .line 1528
    :cond_36
    return-void

    :cond_37
    move-object v3, v5

    move v5, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_4

    :cond_38
    move v5, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_4

    :cond_39
    move-object v1, v3

    move v2, v4

    goto/16 :goto_0
.end method

.method updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .parameter "slot"
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 984
    .local v2, str:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 985
    .local v1, something:Z
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 986
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    const/4 v1, 0x1

    .line 989
    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 990
    if-eqz v1, :cond_1

    .line 991
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    :cond_1
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    const/4 v1, 0x1

    .line 997
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    aget-object v0, v3, p1

    .line 998
    .local v0, oldNetworkName:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 999
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 1005
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1006
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameChanged:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, p1

    .line 1008
    :cond_3
    return-void

    .line 1001
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v4, v3, p1

    goto :goto_0
.end method
