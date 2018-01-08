.class public Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsWifiSharingController.java"


# static fields
.field private static mWifiManager:Landroid/net/wifi/WifiManager;


# instance fields
.field private mWaitForWifiStateChange:Z

.field private mWifiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 2
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWaitForWifiStateChange:Z

    .line 17
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiState:I

    .line 21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->isFirstInDisabled:Z

    .line 22
    const v1, 0x7f06001b

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mCheckText:I

    .line 23
    const v1, 0x7f06001c

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mToastTextOn:I

    .line 24
    const v1, 0x7f06001d

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mToastTextOff:I

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 36
    .local v0, isAirplaneMode:Z
    :cond_0
    if-eqz v0, :cond_1

    .line 37
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 63
    :goto_0
    return-object v1

    .line 40
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 43
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiState:I

    if-eqz v1, :cond_3

    .line 45
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 47
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v1, v2, :cond_4

    .line 48
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 50
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 53
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWaitForWifiStateChange:Z

    if-nez v1, :cond_7

    .line 54
    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    .line 55
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 57
    :cond_6
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 60
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v1, v2, :cond_8

    .line 61
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 63
    :cond_8
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v3

    .line 111
    :goto_0
    return-object v3

    .line 74
    :cond_0
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 75
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    .local v1, isAirplaneMode:Z
    :goto_1
    if-eqz v1, :cond_2

    .line 78
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .end local v1           #isAirplaneMode:Z
    :cond_1
    move v1, v3

    .line 75
    goto :goto_1

    .line 80
    .restart local v1       #isAirplaneMode:Z
    :cond_2
    const-string v3, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 81
    .local v2, recieved_state:I
    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    .line 82
    iget v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiState:I

    if-eqz v3, :cond_3

    .line 83
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 85
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v3, v4, :cond_4

    .line 86
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 88
    :cond_4
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 91
    :cond_5
    const/16 v3, 0xb

    if-ne v2, v3, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWaitForWifiStateChange:Z

    if-nez v3, :cond_7

    .line 92
    iget v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 93
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 95
    :cond_6
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 98
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v3, v4, :cond_8

    .line 99
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 101
    :cond_8
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 105
    .end local v1           #isAirplaneMode:Z
    .end local v2           #recieved_state:I
    :cond_9
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiState:I

    .line 106
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWaitForWifiStateChange:Z

    if-ne v4, v1, :cond_a

    .line 107
    iget v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 108
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWaitForWifiStateChange:Z

    .line 111
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v3

    goto :goto_0
.end method

.method protected setMode(Z)Z
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 119
    .local v2, wifiState:I
    if-eqz p1, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 121
    :cond_0
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 146
    :cond_1
    :goto_0
    return v3

    .line 124
    :cond_2
    const-string v5, "wifi_saved_state"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    :cond_3
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    if-nez p1, :cond_4

    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v5, "wifi_saved_state"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_1
    if-ne v1, v4, :cond_4

    .line 141
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWaitForWifiStateChange:Z

    .line 142
    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 143
    const-string v5, "wifi_saved_state"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v1           #wifiSavedState:I
    :cond_4
    move v3, v4

    .line 146
    goto :goto_0

    .line 138
    .restart local v1       #wifiSavedState:I
    :catch_0
    move-exception v5

    goto :goto_1
.end method
