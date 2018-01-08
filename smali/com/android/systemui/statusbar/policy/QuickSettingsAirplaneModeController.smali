.class public Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsAirplaneModeController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 2
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 21
    const v1, 0x7f060002

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;->mCheckText:I

    .line 22
    const v1, 0x7f060003

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;->mToastTextOn:I

    .line 23
    const v1, 0x7f060004

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;->mToastTextOff:I

    .line 24
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;->mHandler:Landroid/os/Handler;

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 33
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 37
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 2
    .parameter "intent"

    .prologue
    .line 43
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 47
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected setMode(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    .line 53
    move v0, p1

    .line 54
    .local v0, mEnabled:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;Z)V

    const-wide/16 v3, 0xd2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    const/4 v1, 0x1

    return v1
.end method
