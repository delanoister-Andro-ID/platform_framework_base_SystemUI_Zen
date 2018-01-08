.class public Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsGloveModeController.java"


# instance fields
.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 6
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 33
    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->mObserver:Landroid/database/ContentObserver;

    .line 20
    const v1, 0x7f06004c

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->mCheckText:I

    .line 21
    const v1, 0x7f06004d

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->mToastTextOn:I

    .line 22
    const v1, 0x7f06004e

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->mToastTextOff:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "glove_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->mObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 5

    .prologue
    .line 41
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "glove_mode"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 44
    .local v1, mEnable:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 45
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 47
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
    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected setMode(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glove_mode"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 60
    return v1

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
