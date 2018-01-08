.class public Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsLocationController.java"


# instance fields
.field private isGPSSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 2
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 26
    const v1, 0x7f060126

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;->mCheckText:I

    .line 27
    const v1, 0x7f060013

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;->mToastTextOn:I

    .line 28
    const v1, 0x7f060014

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;->mToastTextOff:I

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;->hasGPSfeature()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;->isGPSSupported:Z

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 5

    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 40
    .local v0, mMode:I
    if-nez v0, :cond_0

    .line 41
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 43
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method public hasGPSfeature()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1
    .parameter "intent"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v0

    return-object v0
.end method

.method protected setMode(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v4, -0x2

    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, mMode:I
    if-eqz p1, :cond_2

    .line 55
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;->isGPSSupported:Z

    if-eqz v2, :cond_1

    .line 56
    const/4 v1, 0x3

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 65
    if-eqz p1, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, closeDialog:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 70
    .end local v0           #closeDialog:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 58
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 61
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
