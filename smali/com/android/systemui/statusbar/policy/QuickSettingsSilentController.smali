.class public Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsSilentController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 2
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 18
    const v1, 0x7f060015

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;->mCheckText:I

    .line 19
    const v1, 0x7f060016

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;->mToastTextOn:I

    .line 20
    const v1, 0x7f060017

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;->mToastTextOff:I

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    return-void
.end method

.method private getSilentMode(I)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 27
    if-nez p1, :cond_0

    .line 28
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;->get_vibeInSilent()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 31
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method private get_vibeInSilent()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 4

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 48
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 49
    .local v1, mode:I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;->getSilentMode(I)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v2

    return-object v2
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 3
    .parameter "intent"

    .prologue
    .line 54
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, recieved_state:I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;->getSilentMode(I)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v1

    return-object v1
.end method

.method protected setMode(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    .line 61
    if-ne p1, v3, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;->get_vibeInSilent()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 71
    .local v0, type:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 73
    return v3

    .line 66
    .end local v0           #type:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #type:I
    goto :goto_0

    .line 69
    .end local v0           #type:I
    :cond_1
    const/4 v0, 0x2

    .restart local v0       #type:I
    goto :goto_0
.end method
