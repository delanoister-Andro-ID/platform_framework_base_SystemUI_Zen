.class public Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsDoNotDisturbController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 2
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 17
    const v1, 0x7f06004f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;->mCheckText:I

    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "asus.intent.action.TIME_BLOCK_ENABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 5

    .prologue
    .line 27
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 28
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "asus_do_not_disturb"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 30
    .local v1, mEnable:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 31
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 33
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, action:Ljava/lang/String;
    const-string v3, "asus.intent.action.TIME_BLOCK_ENABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    const-string v3, "TIME_BLOCK_ENABLE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 41
    .local v1, enabled:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "asus_do_not_disturb"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 43
    if-eqz v1, :cond_1

    .line 44
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 48
    .end local v1           #enabled:Z
    :goto_0
    return-object v2

    .line 46
    .restart local v1       #enabled:Z
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 48
    .end local v1           #enabled:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v2

    goto :goto_0
.end method

.method protected setMode(Z)Z
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x2

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "asus_do_not_disturb"

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "asus.intent.action.TIME_BLOCK_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TIME_BLOCK_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 60
    return v2

    .line 54
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
