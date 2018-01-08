.class public Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsMultiSimController.java"


# instance fields
.field private mMultiSimPromptObserver:Landroid/database/ContentObserver;

.field private mMultiSimSelectObserver:Landroid/database/ContentObserver;

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 6
    .parameter "context"
    .parameter "itemview"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 26
    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mMultiSimSelectObserver:Landroid/database/ContentObserver;

    .line 32
    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController$2;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mMultiSimPromptObserver:Landroid/database/ContentObserver;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_call"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mMultiSimSelectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms_prompt"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mMultiSimPromptObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v1, "com.pekall.intent.SIM_STATE_CHANGED2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method private isSimReallyAbsent(I)Z
    .locals 2
    .parameter "slot"

    .prologue
    .line 112
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getTmBySlot(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 113
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSimAbsent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isSimOff(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 55
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_sim_sms_prompt"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 57
    .local v0, isPrompt:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->isSimReallyAbsent(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->isSimReallyAbsent(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->SIM_PROMPT:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 65
    :goto_1
    return-object v2

    .end local v0           #isPrompt:Z
    :cond_0
    move v0, v3

    .line 55
    goto :goto_0

    .line 60
    .restart local v0       #isPrompt:Z
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "multi_sim_voice_call"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 62
    .local v1, sub:I
    if-nez v1, :cond_2

    .line 63
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->SIM1:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_1

    .line 65
    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->SIM2:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.voice_sim_set"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 109
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1
    .parameter "intent"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mMultiSimSelectObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mMultiSimSelectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mMultiSimPromptObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mMultiSimPromptObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 89
    :cond_1
    return-void
.end method

.method protected setMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "statusBarService"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    .line 93
    return-void
.end method
