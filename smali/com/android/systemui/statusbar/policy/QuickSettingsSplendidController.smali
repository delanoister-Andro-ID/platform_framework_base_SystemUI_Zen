.class public Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsSplendidController.java"


# instance fields
.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 6
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 37
    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mObserver:Landroid/database/ContentObserver;

    .line 24
    const v1, 0x7f060023

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mCheckText:I

    .line 25
    const v1, 0x7f060024

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mToastTextOn:I

    .line 26
    const v1, 0x7f060025

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mToastTextOff:I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "asus_splendid_reading_mode_main_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 31
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 5

    .prologue
    .line 45
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 46
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "asus_splendid_reading_mode_main_switch"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 48
    .local v1, mEnable:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 49
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 51
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1
    .parameter "intent"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    :cond_0
    return-void
.end method

.method protected setMode(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    .line 61
    move v0, p1

    .line 62
    .local v0, mEnabled:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController$2;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;Z)V

    const-wide/16 v3, 0xd2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    const/4 v1, 0x1

    return v1
.end method
