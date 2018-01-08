.class public Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsWifiController.java"


# instance fields
.field private mWifiApState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 2
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 16
    const/16 v1, 0xe

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mWifiApState:I

    .line 20
    const v1, 0x7f060018

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mCheckText:I

    .line 21
    const v1, 0x7f060019

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mToastTextOn:I

    .line 22
    const v1, 0x7f06001a

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mToastTextOff:I

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 24
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 32
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 35
    .local v0, isAirplaneMode:Z
    :cond_0
    if-eqz v0, :cond_2

    .line 36
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_toggleable_radios"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, toggleable:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 39
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 57
    .end local v2           #toggleable:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 42
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 43
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-ne v4, v3, :cond_5

    .line 44
    iget v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mWifiApState:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    .line 45
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 47
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v3, v4, :cond_4

    .line 48
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 50
    :cond_4
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 54
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mWifiApState:I

    const/16 v4, 0xc

    if-eq v3, v4, :cond_6

    .line 55
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 57
    :cond_6
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 4
    .parameter "intent"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v2

    .line 95
    :goto_0
    return-object v2

    .line 68
    :cond_0
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 69
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 70
    .local v1, recieved_state:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 71
    iget v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mWifiApState:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 72
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v2, v3, :cond_2

    .line 75
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 77
    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 80
    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 81
    iget v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mWifiApState:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    .line 82
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 84
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 87
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v2, v3, :cond_6

    .line 88
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 90
    :cond_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 94
    .end local v1           #recieved_state:I
    :cond_7
    const-string v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mWifiApState:I

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v2

    goto :goto_0
.end method

.method protected setMode(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 102
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 103
    .local v1, wifiApState:I
    if-eqz p1, :cond_2

    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/16 v3, 0xd

    if-ne v1, v3, :cond_2

    .line 105
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    :cond_1
    :goto_0
    return v2

    .line 109
    :cond_2
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    const/4 v2, 0x1

    goto :goto_0
.end method
