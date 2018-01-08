.class public Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsPlayToController.java"


# instance fields
.field private mPlayToState:I

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 2
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;->mPlayToState:I

    .line 34
    const v1, 0x7f060048

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;->mCheckText:I

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.asus.playto.action.PLAYTO_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;->mPlayToState:I

    packed-switch v0, :pswitch_data_0

    .line 46
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.playto.action.PLAYTO_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 2
    .parameter "intent"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "active_target_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;->mPlayToState:I

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v0

    return-object v0
.end method

.method protected setMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "statusBarService"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    .line 74
    return-void
.end method
