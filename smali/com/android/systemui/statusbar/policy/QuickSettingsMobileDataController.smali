.class public Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsMobileDataController.java"


# instance fields
.field private mConnService:Landroid/net/ConnectivityManager;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mObserver:Ljava/util/Observer;

.field private settingsCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 9
    .parameter "context"
    .parameter "itemview"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 36
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->isFirstInDisabled:Z

    .line 37
    const v0, 0x7f060034

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mCheckText:I

    .line 38
    const v0, 0x7f060035

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mToastTextOn:I

    .line 39
    const v0, 0x7f060036

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mToastTextOff:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "mobile_data"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->settingsCursor:Landroid/database/Cursor;

    .line 45
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->settingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mObserver:Ljava/util/Observer;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mConnService:Landroid/net/ConnectivityManager;

    .line 59
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, p0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 68
    .local v1, isAirplaneMode:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 69
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 78
    :goto_1
    return-object v3

    .end local v1           #isAirplaneMode:Z
    :cond_0
    move v1, v3

    .line 66
    goto :goto_0

    .line 72
    .restart local v1       #isAirplaneMode:Z
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "mobile_data"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 74
    .local v2, mode:I
    if-eqz v2, :cond_2

    .line 75
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_1

    .line 78
    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_1
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1
    .parameter "intent"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->settingsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 99
    return-void
.end method

.method protected setMode(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
