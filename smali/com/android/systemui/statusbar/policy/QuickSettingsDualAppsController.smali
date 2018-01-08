.class public Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsDualAppsController.java"

# interfaces
.implements Lcom/android/systemui/recent/DualAppsService$Callback;


# static fields
.field private static final DUAL_APPS_ENABLED_URI:Landroid/net/Uri;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mIsBound:Z

.field private mIsFromQuickSettings:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mObserver:Landroid/database/ContentObserver;

.field private mService:Lcom/android/systemui/recent/DualAppsService;

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "set_dual_apps_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->DUAL_APPS_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 7
    .parameter "context"
    .parameter "itemview"

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 33
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mIsFromQuickSettings:Z

    .line 34
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mIsBound:Z

    .line 90
    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$2;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mObserver:Landroid/database/ContentObserver;

    .line 316
    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$5;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mConnection:Landroid/content/ServiceConnection;

    .line 51
    const v2, 0x7f060066

    iput v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mCheckText:I

    .line 52
    const v2, 0x7f060067

    iput v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mToastTextOn:I

    .line 53
    const v2, 0x7f060068

    iput v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mToastTextOff:I

    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 57
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v2, "action.intent.START_DUAL_APPS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->DUAL_APPS_ENABLED_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "set_dual_apps_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    const-string v2, "0"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->setAsusOverlayShowOrHide(Ljava/lang/String;I)V

    .line 71
    const-string v2, "0"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->setAsusOverlayShowOrHide(Ljava/lang/String;I)V

    .line 73
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v1, filterU:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->doBindService()V

    .line 88
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->DUAL_APPS_ENABLED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->startOrHideAsusOverlay(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->launchAllAppsOnOverlayDisplay(I)V

    return-void
.end method

.method private checkIfShowTutorial()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 173
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    const-string v6, "com.asus.dualapp"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 174
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v5, "RECENTLYAPP_TUTORIAL"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 176
    .local v2, tutorialUsed:Z
    if-nez v2, :cond_0

    .line 177
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    const-string v6, "com.asus.dualapp"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "RECENTLYAPP_TUTORIAL"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isTopActivityDualSupported()Z
    .locals 4

    .prologue
    .line 273
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v3}, Lcom/android/systemui/recent/DualAppsService;->getFocusApp()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, topPackageName:Ljava/lang/String;
    const-string v3, "asus_dual_apps"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IDualAppsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IDualAppsService;

    move-result-object v0

    .line 277
    .local v0, daService:Lcom/android/internal/app/IDualAppsService;
    :try_start_0
    invoke-interface {v0, v2}, Lcom/android/internal/app/IDualAppsService;->isNoOverlayPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 278
    const/4 v3, 0x1

    .line 283
    :goto_0
    return v3

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 283
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private launchAllAppsOnOverlayDisplay(I)V
    .locals 15
    .parameter "displayID"

    .prologue
    .line 250
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v3, intent:Landroid/content/Intent;
    const-string v1, "com.asus.miniwindow"

    const-string v2, "com.asus.miniwindow.MiniWindowActivity"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const v1, 0x10808000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 257
    .local v0, am:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x2

    move/from16 v13, p1

    :try_start_0
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->startActivityAsUserQueued(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v14

    .line 260
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchAllAppsOnOverlayDisplayDelayed(IJ)V
    .locals 2
    .parameter "displayID"
    .parameter "delayMillis"

    .prologue
    .line 217
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$4;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;I)V

    .line 223
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    return-void
.end method

.method private setAsusOverlayShowOrHide(Ljava/lang/String;I)V
    .locals 2
    .parameter "status"
    .parameter "displayID"

    .prologue
    .line 240
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_overlay_display_show"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_overlay_display_ext_show"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setFocus(I)V
    .locals 2
    .parameter "displayId"

    .prologue
    .line 288
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setFocus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startOrHideAsusOverlay(ZI)V
    .locals 2
    .parameter "enabled"
    .parameter "display"

    .prologue
    .line 227
    if-eqz p1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0}, Lcom/android/systemui/recent/DualAppsService;->getTopDid()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->isTopActivityDualSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v1}, Lcom/android/systemui/recent/DualAppsService;->getTopDid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->moveTopTaskToDisplayQueued(II)V

    .line 233
    :goto_0
    const-string v0, "1"

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->setAsusOverlayShowOrHide(Ljava/lang/String;I)V

    .line 237
    :goto_1
    return-void

    .line 231
    :cond_0
    const-wide/16 v0, 0x64

    invoke-direct {p0, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->launchAllAppsOnOverlayDisplayDelayed(IJ)V

    goto :goto_0

    .line 235
    :cond_1
    const-string v0, "0"

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->setAsusOverlayShowOrHide(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private startOrHideAsusOverlayDelayed(ZIJ)V
    .locals 2
    .parameter "enabled"
    .parameter "display"
    .parameter "delayMillis"

    .prologue
    .line 207
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$3;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;ZI)V

    .line 213
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    return-void
.end method

.method private updateDualApps(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    .line 192
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v1}, Lcom/android/systemui/recent/DualAppsService;->getTopDid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/DualAppsService;->isOpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mIsFromQuickSettings:Z

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0}, Lcom/android/systemui/recent/DualAppsService;->openDualApps()V

    .line 199
    :goto_0
    if-eqz p1, :cond_1

    .line 200
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->setFocus(I)V

    .line 204
    :goto_1
    return-void

    .line 196
    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->startOrHideAsusOverlayDelayed(ZIJ)V

    .line 197
    const/4 v0, 0x2

    const-wide/16 v1, 0x64

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->startOrHideAsusOverlayDelayed(ZIJ)V

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->setFocus(I)V

    goto :goto_1
.end method

.method private updateDualAppsTutorial()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.dualappssettings.DualAppTutorialActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    const-string v1, "FIRST_TUTORIAL"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method


# virtual methods
.method public doBindService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/recent/DualAppsService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 305
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mIsBound:Z

    .line 306
    return-void
.end method

.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_dual_apps_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method public moveTopTaskToDisplayQueued(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 266
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->moveTopTaskToDisplayQueued(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->onClick(Landroid/view/View;)V

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->checkIfShowTutorial()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->updateDualAppsTutorial()V

    .line 158
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "set_dual_apps_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->updateDualApps(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public onDisplayAdded(I)V
    .locals 2
    .parameter "displayId"

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mIsFromQuickSettings:Z

    if-eqz v0, :cond_0

    .line 343
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mIsFromQuickSettings:Z

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0}, Lcom/android/systemui/recent/DualAppsService;->getTopDid()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->moveTopTaskToDisplayQueued(II)V

    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->setFocus(I)V

    .line 347
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 117
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_dual_apps_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 127
    :cond_1
    const-string v0, "action.intent.START_DUAL_APPS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->updateDualApps(Z)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1
    .parameter "intent"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->unBindService()V

    .line 301
    return-void
.end method

.method protected setMode(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "set_dual_apps_enabled"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    return v1

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSerivceBinder(Landroid/os/IBinder;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 332
    if-eqz p1, :cond_0

    .line 333
    check-cast p1, Lcom/android/systemui/recent/DualAppsService$LocalBinder;

    .end local p1
    invoke-virtual {p1}, Lcom/android/systemui/recent/DualAppsService$LocalBinder;->getService()Lcom/android/systemui/recent/DualAppsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/DualAppsService;->setCallback(Lcom/android/systemui/recent/DualAppsService$Callback;)V

    .line 338
    :goto_0
    return-void

    .line 336
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/DualAppsService;->setCallback(Lcom/android/systemui/recent/DualAppsService$Callback;)V

    goto :goto_0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "statusBarService"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    .line 189
    return-void
.end method

.method public unBindService()V
    .locals 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mIsBound:Z

    .line 313
    :cond_0
    return-void
.end method
