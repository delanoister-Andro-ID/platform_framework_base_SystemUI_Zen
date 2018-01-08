.class public Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsMiracastController.java"


# instance fields
.field private mObserver:Landroid/database/ContentObserver;

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

.field private mWifiEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 6
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 25
    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mObserver:Landroid/database/ContentObserver;

    .line 33
    const v1, 0x7f060047

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mCheckText:I

    .line 34
    const v1, 0x7f060052

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mToastTextOn:I

    .line 35
    const v1, 0x7f060053

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mToastTextOff:I

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mWifiEnabled:Z

    .line 43
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 3

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mWifiEnabled:Z

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 53
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_DISPLAY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-super {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 3
    .parameter "intent"

    .prologue
    .line 59
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, extraWifiState:I
    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v1

    return-object v1

    .line 62
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mWifiEnabled:Z

    if-nez v1, :cond_0

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mWifiEnabled:Z

    goto :goto_0

    .line 67
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mWifiEnabled:Z

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected setMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "statusBarService"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    .line 80
    return-void
.end method
