.class public Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsPowerSavingController.java"


# instance fields
.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 5
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->mObserver:Landroid/database/ContentObserver;

    .line 25
    const v0, 0x7f060037

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->mCheckText:I

    .line 26
    const v0, 0x7f060038

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->mToastTextOn:I

    .line 27
    const v0, 0x7f060039

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->mToastTextOff:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saver_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saver_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 40
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1
    .parameter "intent"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    :cond_0
    return-void
.end method

.method protected setMode(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_saver_enabled"

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    if-eqz p1, :cond_0

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.powersaver.startservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return v2

    .line 51
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
