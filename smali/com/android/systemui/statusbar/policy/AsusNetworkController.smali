.class public Lcom/android/systemui/statusbar/policy/AsusNetworkController;
.super Landroid/content/BroadcastReceiver;
.source "AsusNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AsusNetworkController$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;,
        Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;
    }
.end annotation


# static fields
.field public static final AT_T:Z

.field static final CHATTY:Z

.field static final DEBUG:Z


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

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataIconList:[I

.field mDataNetType:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeIconId:I

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

.field private mIsWimaxEnabled:Z

.field private mLastAirplaneMode:Z

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastDataTypeIconId:I

.field mLastEthernetActivityIconId:I

.field mLastEthernetConnected:Z

.field private mLastLocale:Ljava/util/Locale;

.field mLastMobileActivityIconId:I

.field mLastPhoneSignalIconId:I

.field mLastRoamActivityIconId:I

.field mLastRoamTypeIconId:I

.field mLastSignalLevel:I

.field mLastWifiActivityIconId:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private mLocale:Ljava/util/Locale;

.field mMobileActivityIconId:I

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

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field final mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mQSDataTypeIconId:I

.field mQSPhoneSignalIconId:I

.field mQSWifiIconId:I

.field mRoamActivityIconId:I

.field mRoamTypeIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

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

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

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

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->DEBUG:Z

    .line 65
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->CHATTY:Z

    .line 66
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    return-void

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 198
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 72
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 73
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneState:I

    .line 74
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataNetType:I

    .line 75
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataState:I

    .line 76
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataActivity:I

    .line 79
    sget-object v5, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_G:[[I

    aget-object v5, v5, v7

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 92
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mShowPhoneRSSIForData:Z

    .line 93
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mShowAtLeastThreeGees:Z

    .line 94
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAlwaysShowCdmaRssi:Z

    .line 101
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamTypeIconId:I

    .line 102
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    .line 110
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiIconId:I

    .line 111
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSWifiIconId:I

    .line 112
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivity:I

    .line 113
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivityIconId:I

    .line 114
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWifiActivityIconId:I

    .line 124
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mBluetoothTethered:Z

    .line 127
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxSupported:Z

    .line 128
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mIsWimaxEnabled:Z

    .line 129
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxConnected:Z

    .line 130
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIdle:Z

    .line 131
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    .line 132
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxSignal:I

    .line 133
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxState:I

    .line 134
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxExtraState:I

    .line 138
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnected:Z

    .line 139
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnectedNetworkType:I

    .line 141
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    .line 144
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAirplaneMode:Z

    .line 145
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastAirplaneMode:Z

    .line 147
    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLocale:Ljava/util/Locale;

    .line 148
    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastLocale:Ljava/util/Locale;

    .line 152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 153
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalClusters:Ljava/util/ArrayList;

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 158
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastPhoneSignalIconId:I

    .line 159
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWifiIconId:I

    .line 160
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWimaxIconId:I

    .line 161
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastDataTypeIconId:I

    .line 162
    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 163
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetConnected:Z

    .line 164
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastEthernetConnected:Z

    .line 165
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetActivityIconId:I

    .line 166
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastEthernetActivityIconId:I

    .line 167
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastRoamTypeIconId:I

    .line 168
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastRoamActivityIconId:I

    .line 172
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataAndWifiStacked:Z

    .line 420
    new-instance v5, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 199
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 202
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 204
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHasMobileDataFeature:Z

    .line 206
    const v5, 0x7f090006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mShowPhoneRSSIForData:Z

    .line 207
    const v5, 0x7f090007

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mShowAtLeastThreeGees:Z

    .line 208
    const v5, 0x1110042

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAlwaysShowCdmaRssi:Z

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateWifiIcons()V

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateWimaxIcons()V

    .line 216
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 217
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x1e1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 223
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHspaDataDistinguishable:Z

    .line 225
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v6, 0x7f060096

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 226
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v6, 0x104030b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 228
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkName:Ljava/lang/String;

    .line 231
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 232
    new-instance v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V

    .line 233
    .local v2, handler:Landroid/os/Handler;
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 234
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 235
    .local v4, wifiMessenger:Landroid/os/Messenger;
    if-eqz v4, :cond_0

    .line 236
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 252
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxSupported:Z

    .line 264
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxSupported:Z

    if-eqz v5, :cond_1

    .line 265
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    :cond_1
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateAirplaneMode()V

    .line 274
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastLocale:Ljava/util/Locale;

    .line 275
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->isCdma()Z

    move-result v0

    return v0
.end method

.method private final checkDataConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 795
    const/4 v0, 0x1

    .line 797
    .local v0, visible:Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->isCdma()Z

    move-result v1

    if-nez v1, :cond_3

    .line 799
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 801
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataState:I

    if-eq v1, v3, :cond_1

    .line 802
    const/4 v0, 0x0

    .line 813
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataConnected:Z

    .line 814
    return-void

    .line 805
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 809
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataState:I

    if-eq v1, v3, :cond_1

    .line 810
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkRoamDataType()V
    .locals 2

    .prologue
    .line 601
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-nez v0, :cond_2

    .line 602
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->isCdmaEri()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_R:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    .line 605
    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_R:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 608
    :cond_2
    return-void
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1508
    if-eqz p1, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1511
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1516
    :goto_0
    return-object v0

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    const-string v0, "(unknown)"

    goto :goto_0

    .line 1516
    :cond_0
    const-string v0, "(null)"

    goto :goto_0
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 522
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 528
    :pswitch_0
    const/4 v0, 0x1

    .line 531
    :cond_0
    :pswitch_1
    return v0

    .line 523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7
    .parameter "info"

    .prologue
    const/16 v6, 0x22

    .line 970
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 971
    .local v3, ssid:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 972
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 973
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

    .line 976
    const/4 v5, 0x1

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v5, v3

    .line 987
    .end local v4           #ssidLength:I
    :goto_0
    return-object v5

    .line 981
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 982
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

    .line 983
    .local v1, net:Landroid/net/wifi/WifiConfiguration;
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 984
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 987
    .end local v1           #net:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

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

.method private final isNoSim()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 503
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->isCdma()Z

    move-result v2

    if-nez v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_2

    .line 510
    const-string v2, "ril.restart.step"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 514
    goto :goto_0
.end method

.method private refreshLocale()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLocale:Ljava/util/Locale;

    .line 545
    return-void
.end method

.method private set3GDataNetType()V
    .locals 2

    .prologue
    .line 593
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 594
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_4G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v0, v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 595
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0600e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 598
    return-void

    .line 593
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 594
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_3G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v0, v0, v1

    goto :goto_1

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0600e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setFailDataNetType()V
    .locals 2

    .prologue
    .line 586
    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0600e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 590
    return-void
.end method

.method private setShowAtt4G()V
    .locals 6

    .prologue
    const v5, 0x7f020113

    const v4, 0x7f020109

    const/16 v3, 0xd

    .line 734
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataActivity:I

    packed-switch v2, :pswitch_data_0

    .line 784
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataNetType:I

    if-ne v2, v3, :cond_f

    .line 785
    const v2, 0x7f020171

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 736
    :pswitch_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataNetType:I

    if-ne v2, v3, :cond_1

    .line 737
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    goto :goto_0

    .line 738
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    if-eq v2, v5, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    if-ne v2, v4, :cond_0

    .line 740
    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    goto :goto_0

    .line 744
    :pswitch_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataNetType:I

    if-ne v2, v3, :cond_3

    .line 745
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_LTE_OUT:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    goto :goto_0

    .line 746
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    if-eq v2, v5, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    if-ne v2, v4, :cond_0

    .line 748
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_4G_OUT:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    goto :goto_0

    .line 752
    :pswitch_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataNetType:I

    if-ne v2, v3, :cond_9

    .line 753
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastDataTypeIconId:I

    if-gez v2, :cond_5

    .line 754
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_LTE_OUT:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    goto :goto_0

    .line 756
    :cond_5
    const/4 v1, 0x0

    .line 757
    .local v1, is_found:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 758
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_7

    .line 759
    const/4 v1, 0x1

    .line 763
    :cond_6
    if-eqz v1, :cond_8

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    aget v2, v2, v3

    :goto_2
    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    goto :goto_0

    .line 757
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 763
    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_LTE_OUT:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    aget v2, v2, v3

    goto :goto_2

    .line 766
    .end local v0           #i:I
    .end local v1           #is_found:Z
    :cond_9
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    if-eq v2, v5, :cond_a

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    if-ne v2, v4, :cond_0

    .line 768
    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastDataTypeIconId:I

    if-gez v2, :cond_b

    .line 769
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_4G_OUT:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    goto/16 :goto_0

    .line 771
    :cond_b
    const/4 v1, 0x0

    .line 772
    .restart local v1       #is_found:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    array-length v2, v2

    if-ge v0, v2, :cond_c

    .line 773
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_d

    .line 774
    const/4 v1, 0x1

    .line 778
    :cond_c
    if-eqz v1, :cond_e

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    aget v2, v2, v3

    :goto_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    goto/16 :goto_0

    .line 772
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 778
    :cond_e
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_4G_OUT:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    aget v2, v2, v3

    goto :goto_4

    .line 786
    .end local v0           #i:I
    .end local v1           #is_found:Z
    :cond_f
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    if-eq v2, v5, :cond_10

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    if-ne v2, v4, :cond_0

    .line 788
    :cond_10
    const v2, 0x7f020178

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    goto/16 :goto_0

    .line 734
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

    .line 536
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAirplaneMode:Z

    .line 538
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAirplaneMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateTelephonySignalStrength()V

    .line 541
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 536
    goto :goto_0
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1037
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 1038
    const-string v0, "StatusBar.AsusNetworkController"

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

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1043
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1045
    if-nez v0, :cond_8

    .line 1046
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    check-cast v0, Landroid/net/NetworkInfo;

    move-object v3, v0

    .line 1050
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnected:Z

    .line 1051
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnected:Z

    if-eqz v0, :cond_3

    .line 1052
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnectedNetworkType:I

    .line 1053
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1059
    :goto_2
    const-string v0, "inetCondition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1061
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->CHATTY:Z

    if-eqz v4, :cond_1

    .line 1062
    const-string v4, "StatusBar.AsusNetworkController"

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

    .line 1063
    const-string v4, "StatusBar.AsusNetworkController"

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

    .line 1066
    :cond_1
    const/16 v4, 0x32

    if-le v0, v4, :cond_4

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    .line 1068
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_5

    .line 1069
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mBluetoothTethered:Z

    .line 1074
    :goto_4
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_7

    .line 1075
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetConnected:Z

    .line 1081
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateDataNetType()V

    .line 1082
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateWimaxIcons()V

    .line 1083
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateTelephonySignalStrength()V

    .line 1084
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateWifiIcons()V

    .line 1085
    return-void

    :cond_2
    move v0, v2

    .line 1050
    goto/16 :goto_1

    .line 1055
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnectedNetworkType:I

    .line 1056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v0, v2

    .line 1066
    goto :goto_3

    .line 1071
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mBluetoothTethered:Z

    goto :goto_4

    :cond_6
    move v1, v2

    .line 1075
    goto :goto_5

    .line 1077
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetConnected:Z

    goto :goto_6

    :cond_8
    move-object v3, v0

    goto/16 :goto_0
.end method

.method private final updateDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0600e7

    const/4 v5, 0x0

    const v4, 0x7f0600e8

    .line 611
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 612
    .local v0, res:Landroid/content/res/Resources;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mIsWimaxEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxConnected:Z

    if-eqz v2, :cond_1

    .line 614
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 615
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 616
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 706
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    if-nez v2, :cond_10

    .line 707
    iput v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    .line 715
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamTypeIconId:I

    .line 716
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->checkRoamDataType()V

    .line 717
    return-void

    .line 614
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    goto :goto_0

    .line 619
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataNetType:I

    packed-switch v2, :pswitch_data_0

    .line 695
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_f

    .line 696
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 697
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 698
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0600e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 621
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->setFailDataNetType()V

    goto :goto_1

    .line 624
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_2

    .line 625
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_E:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 626
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_E:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 627
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0600ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 631
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->setFailDataNetType()V

    goto :goto_1

    .line 636
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->set3GDataNetType()V

    goto :goto_1

    .line 641
    :pswitch_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_6

    .line 642
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    :goto_3
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 643
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v2, v2, v3

    :goto_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 644
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 642
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_H:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    goto :goto_3

    .line 643
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_H:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v2, v2, v3

    goto :goto_4

    .line 644
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 648
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->set3GDataNetType()V

    goto/16 :goto_1

    .line 652
    :pswitch_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_a

    .line 653
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    :goto_6
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 654
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v2, v2, v3

    :goto_7
    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 655
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 653
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_H_P:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    goto :goto_6

    .line 654
    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_H_P:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v2, v2, v3

    goto :goto_7

    .line 655
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 659
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->set3GDataNetType()V

    goto/16 :goto_1

    .line 664
    :pswitch_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_b

    .line 666
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_1X:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 667
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_1X:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 668
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0600ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 671
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->setFailDataNetType()V

    goto/16 :goto_1

    .line 678
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->set3GDataNetType()V

    goto/16 :goto_1

    .line 681
    :pswitch_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 682
    .local v1, show4GforLTE:Z
    if-eqz v1, :cond_d

    .line 683
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    :goto_9
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 684
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 685
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 683
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    goto :goto_9

    .line 688
    :cond_d
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

    :goto_a
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 689
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_LTE:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 690
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0600e9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 688
    :cond_e
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_LTE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    goto :goto_a

    .line 701
    .end local v1           #show4GforLTE:Z
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->set3GDataNetType()V

    goto/16 :goto_1

    .line 709
    :cond_10
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    if-eqz v2, :cond_11

    const/high16 v2, 0x7f09

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 710
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->DATA_D:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    .line 711
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_DATA_D:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 713
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataIconList:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    goto/16 :goto_2

    .line 619
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
    .locals 3
    .parameter "intent"

    .prologue
    .line 478
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 500
    :goto_0
    return-void

    .line 482
    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 485
    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 486
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 491
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 492
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 495
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 498
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength()V
    .locals 7

    .prologue
    const v3, 0x7f0201db

    const v2, 0x7f020194

    const v6, 0x7f020122

    .line 548
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->hasService()Z

    move-result v4

    if-nez v4, :cond_2

    .line 549
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->CHATTY:Z

    if-eqz v4, :cond_0

    const-string v4, "StatusBar.AsusNetworkController"

    const-string v5, "updateTelephonySignalStrength: !hasService()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    .line 551
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSPhoneSignalIconId:I

    .line 582
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataSignalIconId:I

    .line 583
    return-void

    :cond_1
    move v2, v3

    .line 550
    goto :goto_0

    .line 553
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v4, :cond_5

    .line 554
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->CHATTY:Z

    if-eqz v4, :cond_3

    const-string v4, "StatusBar.AsusNetworkController"

    const-string v5, "updateTelephonySignalStrength: mSignalStrength == null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_3
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v4, :cond_4

    :goto_2
    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    .line 556
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSPhoneSignalIconId:I

    .line 557
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusAccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move v2, v3

    .line 555
    goto :goto_2

    .line 562
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v2, :cond_7

    .line 563
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    .line 564
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "StatusBar.AsusNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAlwaysShowCdmaRssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set to cdmaLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instead of level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_6
    :goto_3
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_ATT_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v1, v2, v3

    .line 574
    .local v1, iconList:[I
    :goto_4
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    .line 575
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_TELEPHONY_ATT_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    :goto_5
    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSPhoneSignalIconId:I

    .line 577
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusAccessibilityContentDescriptions;->PHONE_ATT_SIGNAL_STRENGTH:[I

    aget v2, v2, v0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto/16 :goto_1

    .line 568
    .end local v0           #iconLevel:I
    .end local v1           #iconList:[I
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0       #iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    goto :goto_3

    .line 571
    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v1, v2, v3

    goto :goto_4

    .line 575
    .restart local v1       #iconList:[I
    :cond_9
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    goto :goto_5

    .line 577
    :cond_a
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusAccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v2, v2, v0

    goto :goto_6
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 952
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 953
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiIconId:I

    .line 954
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSWifiIconId:I

    .line 955
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AsusAccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    .line 967
    :goto_0
    return-void

    .line 958
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataAndWifiStacked:Z

    if-eqz v0, :cond_1

    .line 959
    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiIconId:I

    .line 960
    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSWifiIconId:I

    .line 965
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0600cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 962
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020206

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiIconId:I

    .line 963
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    const v1, 0x7f020149

    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSWifiIconId:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 962
    goto :goto_2
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 917
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 918
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 919
    const-string v0, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiEnabled:Z

    .line 948
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateWifiIcons()V

    .line 949
    return-void

    :cond_1
    move v0, v2

    .line 919
    goto :goto_0

    .line 922
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 923
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 925
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    .line 926
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    .line 928
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    .line 930
    const-string v0, "wifiInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 931
    if-nez v0, :cond_3

    .line 932
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 934
    :cond_3
    if-eqz v0, :cond_5

    .line 935
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move v1, v2

    .line 926
    goto :goto_2

    .line 937
    :cond_5
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 939
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    if-nez v0, :cond_0

    .line 940
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 942
    :cond_7
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    const-string v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiRssi:I

    .line 944
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiRssi:I

    sget v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiLevel:I

    goto :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 1018
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 1019
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 1020
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    .line 1023
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AsusAccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    .line 1032
    :goto_1
    return-void

    .line 1022
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    goto :goto_0

    .line 1026
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0600d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 1030
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 993
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 994
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxConnected:Z

    .line 995
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 996
    const-string v2, "4g_state"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 998
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mIsWimaxEnabled:Z

    .line 1012
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateDataNetType()V

    .line 1013
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateWimaxIcons()V

    .line 1014
    return-void

    :cond_1
    move v0, v1

    .line 998
    goto :goto_0

    .line 1000
    :cond_2
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1001
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxSignal:I

    goto :goto_1

    .line 1002
    :cond_3
    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    const-string v2, "WimaxState"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxState:I

    .line 1005
    const-string v2, "WimaxStateDetail"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxExtraState:I

    .line 1008
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxConnected:Z

    .line 1010
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxExtraState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v2, v1

    .line 1008
    goto :goto_2

    :cond_5
    move v0, v1

    .line 1010
    goto :goto_3
.end method


# virtual methods
.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;)V
    .locals 1
    .parameter "cluster"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;)V

    .line 304
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1396
    const-string v0, "AsusNetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1403
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1404
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1405
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1406
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1407
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1409
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1410
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1411
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1412
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1413
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1414
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1415
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1416
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1417
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1418
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1421
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1423
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1424
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1425
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1429
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1432
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1433
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1434
    const-string v0, "  mQSPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1435
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1436
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1437
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1439
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1440
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1441
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1443
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1444
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1445
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    const-string v0, "  mQSDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1447
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1448
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1449
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1453
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1454
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1455
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1456
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1457
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1458
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1459
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1460
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1461
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1467
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1469
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 1470
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1472
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1473
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1474
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1483
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1485
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1486
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1489
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1491
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1492
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1493
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1495
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1497
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWifiIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1499
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1500
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1503
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1504
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    return-void

    .line 1397
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 720
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_1

    .line 721
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 722
    .local v0, iconIndex:I
    if-eq v0, v2, :cond_1

    .line 723
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 724
    .local v1, iconMode:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 730
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
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mServiceState:Landroid/telephony/ServiceState;

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

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;)V
    .locals 17
    .parameter "cb"

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiEnabled:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHasMobileDataFeature:Z

    if-nez v1, :cond_5

    :cond_0
    const/4 v2, 0x1

    .line 344
    .local v2, wifiEnabled:Z
    :goto_0
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiSsid:Ljava/lang/String;

    .line 346
    .local v7, wifiDesc:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivity:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    :cond_1
    const/4 v4, 0x1

    .line 349
    .local v4, wifiIn:Z
    :goto_2
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivity:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    :cond_2
    const/4 v5, 0x1

    .line 352
    .local v5, wifiOut:Z
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSWifiIconId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataConnected:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataActivity:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    :cond_3
    const/4 v13, 0x1

    .line 357
    .local v13, mobileIn:Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataConnected:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataActivity:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    :cond_4
    const/4 v14, 0x1

    .line 359
    .local v14, mobileOut:Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 360
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAirplaneMode:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 375
    return-void

    .line 343
    .end local v2           #wifiEnabled:Z
    .end local v4           #wifiIn:Z
    .end local v5           #wifiOut:Z
    .end local v7           #wifiDesc:Ljava/lang/String;
    .end local v13           #mobileIn:Z
    .end local v14           #mobileOut:Z
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 344
    .restart local v2       #wifiEnabled:Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 346
    .restart local v7       #wifiDesc:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 349
    .restart local v4       #wifiIn:Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    .line 355
    .restart local v5       #wifiOut:Z
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 357
    .restart local v13       #mobileIn:Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    .line 364
    .restart local v14       #mobileOut:Z
    :cond_b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataSignalIconId:I

    .line 365
    .local v10, dataSignalIconId:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 366
    .local v11, contentDescriptionPhoneSignal:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    if-eqz v1, :cond_c

    .line 367
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    .line 368
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    .line 370
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 383
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    .line 415
    :cond_1
    :goto_0
    return-void

    .line 389
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 391
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateTelephonySignalStrength()V

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    goto :goto_0

    .line 393
    :cond_3
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 394
    const-string v1, "showSpn"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showPlmn"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "plmn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    goto :goto_0

    .line 399
    :cond_4
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 401
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    goto :goto_0

    .line 403
    :cond_6
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshLocale()V

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    goto :goto_0

    .line 406
    :cond_7
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateAirplaneMode()V

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    goto :goto_0

    .line 409
    :cond_8
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;)V
    .locals 8
    .parameter "cluster"

    .prologue
    .line 312
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamTypeIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataConnected:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;->setRoamTypeActivityIcon(IIZ)V

    .line 313
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAirplaneMode:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;->setIsAirplaneMode(Z)V

    .line 315
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetConnected:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetActivityIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;->setEthernetIndicators(ZI)V

    .line 318
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivityIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 325
    iget v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataSignalIconId:I

    .line 326
    .local v7, dataSignalIconId:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 327
    .local v5, contentDescriptionPhoneSignal:Ljava/lang/String;
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    if-eqz v0, :cond_1

    .line 328
    iget v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    .line 329
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    .line 332
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void

    .line 318
    .end local v5           #contentDescriptionPhoneSignal:Ljava/lang/String;
    .end local v7           #dataSignalIconId:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v5       #contentDescriptionPhoneSignal:Ljava/lang/String;
    .restart local v7       #dataSignalIconId:I
    :cond_3
    move v2, v7

    .line 332
    goto :goto_1
.end method

.method refreshViews()V
    .locals 11

    .prologue
    const v7, 0x7f0201d9

    const v6, 0x7f0201d8

    const/16 v9, 0x8

    const v8, 0x7f06010f

    const/4 v4, 0x0

    .line 1091
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    .line 1093
    const-string v1, ""

    .line 1094
    const-string v0, ""

    .line 1095
    const-string v0, ""

    .line 1097
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->isEmergencyOnly()Z

    move-result v5

    .line 1099
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_9

    .line 1100
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataSignalIconId:I

    .line 1101
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSPhoneSignalIconId:I

    .line 1102
    const-string v0, ""

    .line 1166
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    if-eqz v2, :cond_13

    .line 1167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 1168
    const v0, 0x7f060110

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1169
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivityIconId:I

    .line 1189
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1190
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    .line 1191
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    .line 1192
    const-string v1, ""

    move-object v2, v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 1201
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mBluetoothTethered:Z

    if-eqz v6, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f060097

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1204
    const-string v0, ""

    .line 1205
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v6, 0x7f0600ef

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1207
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    .line 1208
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    move-object v2, v1

    .line 1211
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetConnected:Z

    if-eqz v6, :cond_3

    .line 1212
    const v0, 0x7f06011b

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1214
    const-string v0, ""

    .line 1215
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetActivityIconId:I

    if-nez v2, :cond_2

    .line 1216
    const v2, 0x7f02017f

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetActivityIconId:I

    .line 1218
    :cond_2
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    .line 1219
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    move-object v2, v1

    .line 1222
    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAirplaneMode:Z

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->hasService()Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v6

    if-nez v6, :cond_17

    .line 1227
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    const v7, 0x7f0600f0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1229
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataSignalIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    .line 1230
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSPhoneSignalIconId:I

    .line 1233
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    if-eqz v6, :cond_15

    .line 1235
    const-string v0, ""

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 1262
    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    const v6, 0x7f0201aa

    if-ne v3, v6, :cond_6

    .line 1263
    :cond_5
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    .line 1266
    :cond_6
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 1267
    const-string v6, "StatusBar.AsusNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshViews connected={"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    if-eqz v3, :cond_1b

    const-string v3, " wifi"

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataConnected:Z

    if-eqz v3, :cond_1c

    const-string v3, " data"

    :goto_5
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " } level="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v3, :cond_1d

    const-string v3, "??"

    :goto_6
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mobileLabel="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " wifiLabel="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " emergencyOnly="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " combinedLabel="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mAirplaneMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAirplaneMode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mDataActivity="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataActivity:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mPhoneSignalIconId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mQSPhoneSignalIconId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSPhoneSignalIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mDataSignalIconId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataSignalIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mDataTypeIconId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mQSDataTypeIconId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mWifiIconId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mQSWifiIconId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSWifiIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastPhoneSignalIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiIconId:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWifiActivityIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivityIconId:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWimaxIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastDataTypeIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastMobileActivityIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastAirplaneMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAirplaneMode:Z

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastLocale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLocale:Ljava/util/Locale;

    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastEthernetConnected:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetConnected:Z

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastEthernetActivityIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetActivityIconId:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastRoamTypeIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamTypeIconId:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastRoamActivityIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    if-eq v0, v3, :cond_1f

    .line 1301
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;

    .line 1302
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;)V

    goto :goto_7

    .line 1111
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->checkDataConnected()V

    .line 1113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataConnected:Z

    if-eqz v0, :cond_c

    .line 1114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkName:Ljava/lang/String;

    .line 1129
    :goto_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataConnected:Z

    if-eqz v2, :cond_11

    .line 1130
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-nez v1, :cond_a

    .line 1131
    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataActivity:I

    packed-switch v1, :pswitch_data_0

    .line 1145
    const v1, 0x7f0201da

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    .line 1146
    const v1, 0x7f0201da

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    .line 1150
    :cond_a
    :goto_9
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->AT_T:Z

    if-eqz v1, :cond_b

    .line 1151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->setShowAtt4G()V

    .line 1154
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    .line 1115
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mConnected:Z

    if-nez v0, :cond_d

    if-eqz v5, :cond_10

    .line 1116
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz v5, :cond_f

    .line 1118
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_8

    .line 1121
    :cond_f
    const-string v0, ""

    goto :goto_8

    .line 1124
    :cond_10
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1133
    :pswitch_0
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    .line 1134
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    goto :goto_9

    .line 1137
    :pswitch_1
    const v1, 0x7f0201dc

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    .line 1138
    const v1, 0x7f0201dc

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    goto :goto_9

    .line 1141
    :pswitch_2
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    .line 1142
    iput v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    goto :goto_9

    .line 1156
    :cond_11
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    .line 1157
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    .line 1158
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSDataTypeIconId:I

    .line 1159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->isNoSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1160
    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataSignalIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    .line 1161
    const v2, 0x7f020122

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mQSPhoneSignalIconId:I

    goto/16 :goto_0

    .line 1171
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiSsid:Ljava/lang/String;

    .line 1172
    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivity:I

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 1183
    :pswitch_3
    const v1, 0x7f0201ff

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1174
    :pswitch_4
    const v1, 0x7f0201fd

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1177
    :pswitch_5
    const v1, 0x7f020200

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1180
    :pswitch_6
    const v1, 0x7f0201fe

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1194
    :cond_13
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_14

    .line 1195
    const-string v2, ""

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto/16 :goto_2

    .line 1197
    :cond_14
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto/16 :goto_2

    .line 1237
    :cond_15
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_16

    .line 1239
    const-string v1, ""

    .line 1244
    :goto_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_3

    .line 1241
    :cond_16
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1242
    goto :goto_a

    .line 1247
    :cond_17
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataConnected:Z

    if-nez v6, :cond_18

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiConnected:Z

    if-nez v6, :cond_18

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mBluetoothTethered:Z

    if-nez v6, :cond_18

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxConnected:Z

    if-nez v6, :cond_18

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetConnected:Z

    if-nez v6, :cond_18

    .line 1249
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1250
    const v6, 0x7f090001

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1251
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1256
    :goto_b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :goto_c
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1259
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->checkRoamDataType()V

    :cond_18
    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_3

    .line 1253
    :cond_19
    const-string v2, " "

    goto :goto_b

    .line 1256
    :cond_1a
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_c

    .line 1267
    :cond_1b
    const-string v3, ""

    goto/16 :goto_4

    :cond_1c
    const-string v3, ""

    goto/16 :goto_5

    :cond_1d
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 1304
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;

    .line 1305
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;)V

    goto :goto_d

    .line 1309
    :cond_1f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastAirplaneMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAirplaneMode:Z

    if-eq v0, v3, :cond_20

    .line 1310
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastAirplaneMode:Z

    .line 1313
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastLocale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLocale:Ljava/util/Locale;

    if-eq v0, v3, :cond_21

    .line 1314
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastLocale:Ljava/util/Locale;

    .line 1318
    :cond_21
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastPhoneSignalIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    if-eq v0, v3, :cond_22

    .line 1319
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mPhoneSignalIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastPhoneSignalIconId:I

    .line 1323
    :cond_22
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiIconId:I

    if-eq v0, v3, :cond_23

    .line 1324
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWifiIconId:I

    .line 1327
    :cond_23
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWifiActivityIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivityIconId:I

    if-eq v0, v3, :cond_24

    .line 1328
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWifiActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWifiActivityIconId:I

    .line 1332
    :cond_24
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWimaxIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    if-eq v0, v3, :cond_25

    .line 1333
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mWimaxIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastWimaxIconId:I

    .line 1336
    :cond_25
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastDataTypeIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    if-eq v0, v3, :cond_26

    .line 1337
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataTypeIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastDataTypeIconId:I

    .line 1340
    :cond_26
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastMobileActivityIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    if-eq v0, v3, :cond_27

    .line 1341
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastMobileActivityIconId:I

    .line 1345
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1346
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 1347
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v4

    .line 1348
    :goto_e
    if-ge v3, v6, :cond_28

    .line 1349
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1350
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    .line 1355
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v4

    .line 1356
    :goto_f
    if-ge v2, v3, :cond_2a

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1358
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1360
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1356
    :goto_10
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    .line 1362
    :cond_29
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10

    .line 1367
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v4

    .line 1368
    :goto_11
    if-ge v2, v3, :cond_2c

    .line 1369
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1370
    if-nez v5, :cond_2b

    .line 1371
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1368
    :goto_12
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 1373
    :cond_2b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12

    .line 1378
    :cond_2c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastRoamTypeIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamTypeIconId:I

    if-eq v0, v1, :cond_2d

    .line 1379
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamTypeIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastRoamTypeIconId:I

    .line 1382
    :cond_2d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastRoamActivityIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    if-eq v0, v1, :cond_2e

    .line 1383
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mRoamActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastRoamActivityIconId:I

    .line 1386
    :cond_2e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastEthernetConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetConnected:Z

    if-eq v0, v1, :cond_2f

    .line 1387
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetConnected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastEthernetConnected:Z

    .line 1390
    :cond_2f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastEthernetActivityIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetActivityIconId:I

    if-eq v0, v1, :cond_30

    .line 1391
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mEthernetActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mLastEthernetActivityIconId:I

    .line 1393
    :cond_30
    return-void

    .line 1131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1172
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 823
    .local v0, something:Z
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 824
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    const/4 v0, 0x1

    .line 827
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 828
    if-eqz v0, :cond_1

    .line 829
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    const/4 v0, 0x1

    .line 834
    :cond_2
    if-eqz v0, :cond_3

    .line 835
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkName:Ljava/lang/String;

    .line 839
    :goto_0
    return-void

    .line 837
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method
