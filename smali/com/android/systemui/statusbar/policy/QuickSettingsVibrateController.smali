.class public Lcom/android/systemui/statusbar/policy/QuickSettingsVibrateController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsVibrateController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 2
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsVibrateController;->setVibrateImage()V

    .line 16
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 17
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 4

    .prologue
    .line 23
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsVibrateController;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 24
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 25
    .local v1, mode:I
    packed-switch v1, :pswitch_data_0

    .line 32
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VOLUME:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    :goto_0
    return-object v2

    .line 27
    :pswitch_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->MUTE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 29
    :pswitch_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VIBRATE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 3
    .parameter "intent"

    .prologue
    .line 38
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, mode:I
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->MUTE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VOLUME:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsVibrateController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    .line 42
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 49
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VOLUME:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 44
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->MUTE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 46
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VIBRATE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setMode(Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 3
    .parameter "mode"

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsVibrateController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object p1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected setMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method setVibrateImage()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->setVibrateImage()V

    .line 72
    return-void
.end method
