.class public Lcom/android/systemui/statusbar/phone/AsusQuickSettings;
.super Ljava/lang/Object;
.source "AsusQuickSettings.java"


# instance fields
.field private mAirplane:Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;

.field private mAutoRotate:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;

.field private mAutoSync:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

.field private mBluetooth:Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;

.field private mContext:Landroid/content/Context;

.field private mControllerLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mControllers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mControllersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;",
            ">;"
        }
    .end annotation
.end field

.field private mDBUpdated:Z

.field private mDNDisturb:Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;

.field private mDefaultEnabledControllers:I

.field private mDictionary:Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;

.field private mDualApps:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

.field private mEnabledControllers:I

.field private mFunctionButtonListener:Landroid/view/View$OnClickListener;

.field private mGloveMode:Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;

.field private mIsPlaytoSupported:Z

.field private mIsScreenShotSupported:Z

.field private mItemNum:I

.field private mLocation:Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;

.field private mMaxNum:I

.field private mMemInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

.field private mMiracast:Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;

.field private mMobileData:Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;

.field private mMultiSim:Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;

.field private mNfc:Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;

.field private mNumQuickbox:I

.field private mOnehand:Lcom/android/systemui/statusbar/policy/QuickSettingsOneHandController;

.field private mPlayTo:Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPowerSaving2:Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;

.field private mQBDBUpdated:Z

.field private mQuickboxContainerView:Landroid/view/ViewGroup;

.field private mQuickboxList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQuicksettingContainerView:Landroid/view/ViewGroup;

.field private mR:Landroid/content/res/Resources;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSilent:Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;

.field private mSplendid:Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

.field private mSwitchLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mUserInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

.field private mVibrate:Lcom/android/systemui/statusbar/policy/QuickSettingsVibrateController;

.field private mVoiceCapable:Z

.field private mWifi:Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;

.field private mWifiSharing:Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;)V
    .locals 6
    .parameter "context"
    .parameter "container"
    .parameter "container2"

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mIsPlaytoSupported:Z

    .line 501
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$1;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllerLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 539
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    .line 633
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$4;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuicksettingContainerView:Landroid/view/ViewGroup;

    .line 193
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxContainerView:Landroid/view/ViewGroup;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mVoiceCapable:Z

    .line 197
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllers:Ljava/util/LinkedList;

    .line 198
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxList:Ljava/util/LinkedList;

    .line 200
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v5, 0x7f07004f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mSwitchLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMaxNum:I

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isPlaytoExist(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mIsPlaytoSupported:Z

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mIsScreenShotSupported:Z

    .line 209
    const v0, 0x21fffff

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    .line 210
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "asus.intent.action.quicksettings.reorder"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMemInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->takeScreenShot()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshQBContainerView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshContainerView()V

    return-void
.end method

.method private checkDB(ZLjava/lang/String;I)V
    .locals 4
    .parameter "isSupported"
    .parameter "orderKey"
    .parameter "enabledKey"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/16 v1, 0x1770

    .line 1461
    invoke-direct {p0, p2, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 1462
    .local v0, isExist:I
    if-ne v0, v2, :cond_3

    .line 1463
    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mEnabledControllers:I

    and-int/2addr v2, p3

    if-nez v2, :cond_0

    .line 1464
    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mEnabledControllers:I

    or-int/2addr v2, p3

    iput v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mEnabledControllers:I

    .line 1466
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mItemNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mItemNum:I

    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1468
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDBUpdated:Z

    .line 1479
    :cond_2
    :goto_0
    return-void

    .line 1470
    :cond_3
    if-eqz p1, :cond_4

    if-ne v0, v1, :cond_4

    .line 1471
    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mItemNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mItemNum:I

    invoke-direct {p0, p2, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1472
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDBUpdated:Z

    .line 1474
    :cond_4
    if-nez p1, :cond_2

    if-eq v0, v1, :cond_2

    .line 1475
    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1476
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDBUpdated:Z

    goto :goto_0
.end method

.method private checkPackage(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1159
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return v0

    .line 1163
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    const/4 v0, 0x1

    goto :goto_0

    .line 1166
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private checkQBDB()V
    .locals 2

    .prologue
    .line 1653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQBDBUpdated:Z

    .line 1654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mNumQuickbox:I

    .line 1655
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mIsScreenShotSupported:Z

    const-string v1, "quickbox_screenshot_order"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->updatedQBDB(ZLjava/lang/String;)V

    .line 1657
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQBDBUpdated:Z

    if-eqz v0, :cond_0

    .line 1658
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshQBContainerView()V

    .line 1659
    :cond_0
    return-void
.end method

.method private checkSettingsDB()V
    .locals 3

    .prologue
    .line 1482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDBUpdated:Z

    .line 1483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mItemNum:I

    .line 1485
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isAirplaneModeSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_AIRPLANEMODE_ORDER:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1489
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isWifiSharingSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFISHARING_ORDER:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1493
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isGPSSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_GPS_ORDER:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isBluetoothSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_BLUETOOTH_ORDER:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1501
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSilentSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_SILENT_ORDER:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1505
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isWifiSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFI_ORDER:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1509
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isAutoRotateSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_AUTOROTATE_ORDER:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1513
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isAutoSyncSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_AUTOSYNC_ORDER:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1517
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isInstantDicSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_INSTANTDIC_ORDER:Ljava/lang/String;

    const/16 v2, 0x100

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1521
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isMobileDataSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_MOBILEDATA_ORDER:Ljava/lang/String;

    const/16 v2, 0x200

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1525
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isNfcSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_NFC_ORDER:Ljava/lang/String;

    const/16 v2, 0x400

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isPowerSaving2Supported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_POWERSAVING2_ORDER:Ljava/lang/String;

    const/16 v2, 0x800

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1533
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSplendidSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_SPLENDID_ORDER:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isVibrateSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_VIBRATE_ORDER:Ljava/lang/String;

    const/16 v2, 0x2000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1541
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isOnehandSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_ONEHAND_ORDER:Ljava/lang/String;

    const/16 v2, 0x4000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1545
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isMiracastSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_MIRACAST_ORDER:Ljava/lang/String;

    const v2, 0x8000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1549
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isPlayToSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_PLAYTO_ORDER:Ljava/lang/String;

    const/high16 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1553
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isUserInfoSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_USER_ORDER:Ljava/lang/String;

    const/high16 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1557
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isGloveModeSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_GLOVEMODE_ORDER:Ljava/lang/String;

    const/high16 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1561
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isDualAppsSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_DUAL_APPS_ORDER:Ljava/lang/String;

    const/high16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1565
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isDoNotDisturbSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_DO_NOT_DISTURB_ORDER:Ljava/lang/String;

    const/high16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1569
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isMultiSimSupported()Z

    move-result v0

    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_MULTISIM_ORDER:Ljava/lang/String;

    const/high16 v2, 0x200

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkDB(ZLjava/lang/String;I)V

    .line 1573
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDBUpdated:Z

    if-eqz v0, :cond_0

    .line 1574
    const-string v0, "QUICK_SETTINGS_ENABLED_CONTROLLERS"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mEnabledControllers:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1575
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshContainerView()V

    .line 1577
    :cond_0
    return-void
.end method

.method private declared-synchronized getAirplaneModeController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mAirplane:Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1037
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1038
    const v2, 0x7f040008

    const v3, 0x7f060002

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_AIRPLANEMODE_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1039
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mAirplane:Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mAirplane:Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getAutoRotateController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mAutoRotate:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;

    if-nez v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1113
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1114
    const v2, 0x7f040008

    const v3, 0x7f060005

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_AUTOROTATE_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1115
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mAutoRotate:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mAutoRotate:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getAutoSyncController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mAutoSync:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    if-nez v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1127
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1128
    const v2, 0x7f040008

    const v3, 0x7f060008

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_AUTOSYNC_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1129
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mAutoSync:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mAutoSync:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getBluetoothController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1067
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mBluetooth:Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;

    if-nez v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1069
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1070
    const v2, 0x7f040008

    const v3, 0x7f06000b

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_BLUETOOTH_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1071
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mBluetooth:Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mBluetooth:Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1067
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getGloveModeController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mGloveMode:Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;

    if-nez v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1330
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1331
    const v2, 0x7f040008

    const v3, 0x7f06004c

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_GLOVEMODE_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1332
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mGloveMode:Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mGloveMode:Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getInstantDicController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDictionary:Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1174
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1175
    const v2, 0x7f040008

    const v3, 0x7f060031

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_INSTANTDIC_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1176
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDictionary:Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDictionary:Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getLocationController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1052
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mLocation:Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1054
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1055
    const v2, 0x7f040008

    const v3, 0x7f060126

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_GPS_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1056
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mLocation:Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mLocation:Lcom/android/systemui/statusbar/policy/QuickSettingsLocationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getMiracastController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1280
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMiracast:Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;

    if-nez v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1282
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1283
    const v2, 0x7f040008

    const v3, 0x7f060047

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_MIRACAST_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1284
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMiracast:Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;

    .line 1285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMiracast:Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;->setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMiracast:Lcom/android/systemui/statusbar/policy/QuickSettingsMiracastController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getMobileDataController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMobileData:Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;

    if-nez v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1191
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1192
    const v2, 0x7f040008

    const v3, 0x7f060034

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_MOBILEDATA_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1193
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMobileData:Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMobileData:Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getNfcController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mNfc:Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;

    if-nez v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1206
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1207
    const v2, 0x7f040008

    const v3, 0x7f06003a

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_NFC_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1208
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mNfc:Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mNfc:Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getOnehandController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mOnehand:Lcom/android/systemui/statusbar/policy/QuickSettingsOneHandController;

    if-nez v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1265
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1266
    const v2, 0x7f040008

    const v3, 0x7f060043

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_ONEHAND_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1267
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsOneHandController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsOneHandController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mOnehand:Lcom/android/systemui/statusbar/policy/QuickSettingsOneHandController;

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mOnehand:Lcom/android/systemui/statusbar/policy/QuickSettingsOneHandController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPlayToController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPlayTo:Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;

    if-nez v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1297
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1298
    const v2, 0x7f040008

    const v3, 0x7f060048

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_PLAYTO_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1299
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPlayTo:Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;

    .line 1300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPlayTo:Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;->setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPlayTo:Lcom/android/systemui/statusbar/policy/QuickSettingsPlayToController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPowerSaving2Controller()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPowerSaving2:Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;

    if-nez v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1220
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1221
    const v2, 0x7f040008

    const v3, 0x7f060037

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_POWERSAVING2_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1222
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPowerSaving2:Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPowerSaving2:Lcom/android/systemui/statusbar/policy/QuickSettingsPowerSavingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getSilentController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1082
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mSilent:Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;

    if-nez v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1084
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1085
    const v2, 0x7f040008

    const v3, 0x7f060015

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_SILENT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1086
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mSilent:Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mSilent:Lcom/android/systemui/statusbar/policy/QuickSettingsSilentController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1082
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getSplendidController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mSplendid:Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;

    if-nez v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1235
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1236
    const v2, 0x7f040008

    const v3, 0x7f060023

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_SPLENDID_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1237
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mSplendid:Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mSplendid:Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getUserInfoController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mUserInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    if-nez v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1312
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1313
    const v2, 0x7f040008

    const v3, 0x7f06012d

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_USER_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1314
    const v0, 0x7f02008b

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setItemTextColor(I)V

    .line 1315
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mUserInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    .line 1316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mUserInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->queryForUserInformation()V

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mUserInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mUserInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getVibrateController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mVibrate:Lcom/android/systemui/statusbar/policy/QuickSettingsVibrateController;

    if-nez v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1250
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1251
    const v2, 0x7f040008

    const v3, 0x7f06003d

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_VIBRATE_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1252
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsVibrateController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsVibrateController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mVibrate:Lcom/android/systemui/statusbar/policy/QuickSettingsVibrateController;

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mVibrate:Lcom/android/systemui/statusbar/policy/QuickSettingsVibrateController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getWifiController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1097
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mWifi:Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1099
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1100
    const v2, 0x7f040008

    const v3, 0x7f060018

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFI_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1101
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mWifi:Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mWifi:Lcom/android/systemui/statusbar/policy/QuickSettingsWifiController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getWifiSharingController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mWifiSharing:Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;

    if-nez v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1144
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1145
    const v2, 0x7f040008

    const v3, 0x7f06001b

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFISHARING_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1146
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mWifiSharing:Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mWifiSharing:Lcom/android/systemui/statusbar/policy/QuickSettingsWifiSharingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAirplaneModeSupported()Z
    .locals 1

    .prologue
    .line 1031
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAutoRotateSupported()Z
    .locals 1

    .prologue
    .line 1107
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAutoSyncSupported()Z
    .locals 1

    .prologue
    .line 1121
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBluetoothSupported()Z
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDoNotDisturbSupported()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1353
    new-instance v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 1355
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1356
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/asus/systemui/util/AsusQuicksettingUtil;->getInstance(Landroid/content/Context;)Lcom/asus/systemui/util/AsusQuicksettingUtil;

    move-result-object v2

    const-string v3, "com.android.phone"

    invoke-virtual {v2, v3}, Lcom/asus/systemui/util/AsusQuicksettingUtil;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1357
    const-string v3, "notfound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "1.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1359
    const/4 v3, 0x6

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1360
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1361
    const v3, 0x225a4

    if-le v2, v3, :cond_1

    move v2, v0

    .line 1365
    :goto_0
    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method private isDualAppsSupported()Z
    .locals 1

    .prologue
    .line 1338
    const/4 v0, 0x0

    return v0
.end method

.method private isEnabled(I)Z
    .locals 1
    .parameter "order"

    .prologue
    .line 854
    const/16 v0, 0x1770

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGPSSupported()Z
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1046
    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 1047
    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGloveModeSupported()Z
    .locals 2

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "asus.hardware.glove"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInstantDicSupported()Z
    .locals 1

    .prologue
    .line 1152
    const-string v0, "com.asus.translator"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMiracastSupported()Z
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1274
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    .line 1275
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mIsPlaytoSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataSupported()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1182
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 1183
    .local v1, isOwner:Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1184
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1

    :goto_1
    return v2

    .end local v0           #conn:Landroid/net/ConnectivityManager;
    .end local v1           #isOwner:Z
    :cond_0
    move v1, v3

    .line 1182
    goto :goto_0

    .restart local v0       #conn:Landroid/net/ConnectivityManager;
    .restart local v1       #isOwner:Z
    :cond_1
    move v2, v3

    .line 1184
    goto :goto_1
.end method

.method private isMultiSimSupported()Z
    .locals 2

    .prologue
    .line 1379
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNfcSupported()Z
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnehandSupported()Z
    .locals 2

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "asus.software.whole_system_onehand"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlayToSupported()Z
    .locals 2

    .prologue
    .line 1291
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mIsPlaytoSupported:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlaytoExist(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 1444
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1445
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1446
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.asus.playto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_0

    .line 1447
    const/4 v0, 0x1

    .line 1450
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPowerSaving2Supported()Z
    .locals 1

    .prologue
    .line 1214
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSilentSupported()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSplendidSupported()Z
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "asus.hardware.display.splendid.reading_mode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupported(I)Z
    .locals 1
    .parameter "order"

    .prologue
    .line 1672
    const/16 v0, 0x1770

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserInfoSupported()Z
    .locals 2

    .prologue
    .line 1306
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVibrateSupported()Z
    .locals 1

    .prologue
    .line 1243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiSharingSupported()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1135
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 1136
    .local v1, isOwner:Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1137
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    :goto_1
    return v2

    .end local v0           #conn:Landroid/net/ConnectivityManager;
    .end local v1           #isOwner:Z
    :cond_0
    move v1, v3

    .line 1135
    goto :goto_0

    .restart local v0       #conn:Landroid/net/ConnectivityManager;
    .restart local v1       #isOwner:Z
    :cond_1
    move v2, v3

    .line 1137
    goto :goto_1
.end method

.method private isWifiSupported()Z
    .locals 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDefaultEnabledControllers:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSettings(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1420
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1423
    .end local p2
    :goto_0
    return p2

    .line 1422
    .restart local p2
    :catch_0
    move-exception v0

    .line 1423
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private refreshContainerView()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuicksettingContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 724
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuicksettingContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->addCheckbox(Landroid/view/ViewGroup;)V

    .line 725
    return-void
.end method

.method private refreshOrders()V
    .locals 5

    .prologue
    .line 713
    const/4 v1, 0x0

    .line 714
    .local v1, counter:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllers:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    .line 718
    .local v0, cc:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v1, 0x1

    .end local v1           #counter:I
    .local v2, counter:I
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    move v1, v2

    .end local v2           #counter:I
    .restart local v1       #counter:I
    goto :goto_0

    .line 720
    .end local v0           #cc:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    :cond_0
    return-void
.end method

.method private refreshQBContainerView()V
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1649
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->addQuickbox(Landroid/view/ViewGroup;)V

    .line 1650
    return-void
.end method

.method private saveSettings(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1430
    return-void
.end method

.method private takeScreenShot()V
    .locals 1

    .prologue
    .line 616
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$3;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V

    .line 630
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 631
    return-void
.end method

.method private tryToResetData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 216
    const-string v0, "QUICK_SETTINGS_ENABLED_CONTROLLERS"

    const v1, 0x21fffff

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mEnabledControllers:I

    .line 218
    const-string v0, "QUICK_SETTINGS_FIRST_TIME_TO_BOOT"

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 220
    const-string v0, "QUICK_SETTINGS_FIRST_TIME_TO_BOOT"

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->resetToDefaultOrder()V

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->resetQBToDefaultOrder()V

    .line 223
    const-string v0, "QUICK_SETTINGS_ENABLED_CONTROLLERS"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mEnabledControllers:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 224
    const-string v0, "quick_setting_fota_db_rewright "

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 231
    :cond_0
    :goto_0
    const-string v0, "quick_box_first_time_reorder"

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 232
    const-string v0, "quick_box_first_time_reorder"

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->resetQBToDefaultOrder()V

    .line 235
    :cond_1
    return-void

    .line 226
    :cond_2
    const-string v0, "quick_setting_fota_db_rewright "

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const-string v0, "quick_setting_fota_db_rewright "

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->reWrightDB()V

    goto :goto_0
.end method

.method private updatedQBDB(ZLjava/lang/String;)V
    .locals 2
    .parameter "isSupported"
    .parameter "orderKey"

    .prologue
    const/4 v1, -0x1

    .line 1662
    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 1663
    .local v0, order:I
    if-ne v0, v1, :cond_0

    .line 1664
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mNumQuickbox:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mNumQuickbox:I

    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1667
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQBDBUpdated:Z

    .line 1669
    :cond_0
    return-void

    .line 1664
    :cond_1
    const/16 v1, 0x1770

    goto :goto_0
.end method


# virtual methods
.method addCheckbox(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getControllers()Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllers:Ljava/util/LinkedList;

    .line 461
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    .line 462
    .local v0, c:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFI_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFI_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 465
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 496
    :cond_0
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setEnabled(Z)V

    .line 497
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuicksettingContainerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mSwitchLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_BLUETOOTH_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_BLUETOOTH_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 468
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 469
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_GPS_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 470
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_GPS_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 471
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 472
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_MOBILEDATA_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 473
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_MOBILEDATA_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 474
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 475
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFISHARING_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 476
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFISHARING_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 477
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 478
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_POWERSAVING2_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 479
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_POWERSAVING2_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 480
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 481
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_SPLENDID_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 482
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_SPLENDID_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 483
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 484
    :cond_7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_DO_NOT_DISTURB_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->QUICK_SETTINGS_DO_NOT_DISTURB_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 486
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 499
    .end local v0           #c:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    :cond_8
    return-void
.end method

.method addQuickbox(Landroid/view/ViewGroup;)V
    .locals 27
    .parameter "parent"

    .prologue
    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 296
    new-instance v26, Ljava/util/TreeMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/TreeMap;-><init>()V

    .line 298
    .local v26, tmp:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;>;"
    const-string v3, "quickbox_flashlight_order"

    const/16 v15, 0x1770

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v25

    .line 299
    .local v25, order:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v15, 0x7f0200a6

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 301
    .local v4, mDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;-><init>(Landroid/content/Context;)V

    .line 302
    .local v2, mFlashlight:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    const v3, 0x7f040008

    const v5, 0x7f060059

    const-string v6, "quickbox_flashlight_order"

    const-string v7, "com.asus.flashlight"

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    const v3, 0x7f0200ae

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setItemTextColor(I)V

    .line 306
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .end local v2           #mFlashlight:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    .end local v4           #mDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v3, "quickbox_boost_order"

    const/16 v15, 0x1770

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v25

    .line 312
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v15, 0x7f0200a2

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 314
    .restart local v4       #mDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v5, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;-><init>(Landroid/content/Context;)V

    .line 315
    .local v5, mClean:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    const v6, 0x7f040009

    const v8, 0x7f060060

    const-string v9, "quickbox_boost_order"

    const/4 v10, 0x0

    move-object v7, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    const v3, 0x7f02009c

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setItemTextColor(I)V

    .line 318
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    new-instance v3, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v15, v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMemInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    .line 321
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v4           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #mClean:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    :cond_1
    const-string v3, "quickbox_calculator_order"

    const/16 v15, 0x1770

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v25

    .line 325
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v15, 0x7f0200a0

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 327
    .restart local v4       #mDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;-><init>(Landroid/content/Context;)V

    .line 328
    .local v6, mCalculator:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    const v7, 0x7f040008

    const v9, 0x7f060058

    const-string v10, "quickbox_calculator_order"

    const-string v11, "com.asus.calculator"

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 331
    const v3, 0x7f0200ae

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setItemTextColor(I)V

    .line 332
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v4           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v6           #mCalculator:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    :cond_2
    const-string v3, "quickbox_quickmemo_order"

    const/16 v15, 0x1770

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v25

    .line 338
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v15, 0x7f0200ab

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 340
    .restart local v4       #mDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v7, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;-><init>(Landroid/content/Context;)V

    .line 341
    .local v7, mMemo:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    const v8, 0x7f040008

    const v10, 0x7f06005a

    const-string v11, "quickbox_quickmemo_order"

    const-string v12, "com.asus.quickmemo"

    move-object v9, v4

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 344
    const v3, 0x7f0200ae

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setItemTextColor(I)V

    .line 345
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .end local v4           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #mMemo:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    :cond_3
    const-string v3, "quickbox_dictionary_order"

    const/16 v15, 0x1770

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v25

    .line 351
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v15, 0x7f0200a5

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 353
    .restart local v4       #mDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;-><init>(Landroid/content/Context;)V

    .line 354
    .local v8, mDic:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    const v9, 0x7f040008

    const v11, 0x7f06005b

    const-string v12, "quickbox_dictionary_order"

    const-string v13, "com.asus.mydictionary"

    move-object v10, v4

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 357
    const v3, 0x7f0200ae

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setItemTextColor(I)V

    .line 358
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .end local v4           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v8           #mDic:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    :cond_4
    const-string v3, "quickbox_audiowizard_order"

    const/16 v15, 0x1770

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v25

    .line 364
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v15, 0x7f02009f

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 366
    .restart local v4       #mDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v9, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v9, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;-><init>(Landroid/content/Context;)V

    .line 367
    .local v9, mAudio:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    const v10, 0x7f040008

    const v12, 0x7f060049

    const-string v13, "quickbox_audiowizard_order"

    const-string v14, "com.asus.maxxaudio.audiowizard"

    move-object v11, v4

    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 370
    const v3, 0x7f0200ae

    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setItemTextColor(I)V

    .line 371
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .end local v4           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v9           #mAudio:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    :cond_5
    const-string v3, "quickbox_soundrecord_order"

    const/16 v15, 0x1770

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v25

    .line 377
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v15, 0x7f0200ad

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 379
    .restart local v4       #mDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v10, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;-><init>(Landroid/content/Context;)V

    .line 380
    .local v10, mSound:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    const v11, 0x7f040008

    const v13, 0x7f06005c

    const-string v14, "quickbox_soundrecord_order"

    const-string v15, "com.asus.soundrecorder"

    move-object v12, v4

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 383
    const v3, 0x7f0200ae

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setItemTextColor(I)V

    .line 384
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v4           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #mSound:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    :cond_6
    const-string v3, "quickbox_fmradio_order"

    const/16 v15, 0x1770

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v25

    .line 390
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v15, 0x7f0200a8

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 392
    .restart local v4       #mDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v11, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;-><init>(Landroid/content/Context;)V

    .line 393
    .local v11, mFMRadio:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    const v12, 0x7f040008

    const v14, 0x7f06005d

    const-string v15, "quickbox_fmradio_order"

    const-string v16, "com.asus.fmradio"

    move-object v13, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    const v3, 0x7f0200ae

    invoke-virtual {v11, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setItemTextColor(I)V

    .line 397
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .end local v4           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v11           #mFMRadio:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    :cond_7
    const-string v3, "quickbox_camera_order"

    const/16 v15, 0x1770

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v25

    .line 403
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v15, 0x7f0200a1

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 405
    .restart local v4       #mDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v12, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v12, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;-><init>(Landroid/content/Context;)V

    .line 406
    .local v12, mCamera:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    const v13, 0x7f040008

    const v15, 0x7f060057

    const-string v16, "quickbox_camera_order"

    const-string v17, "com.asus.camera"

    move-object v14, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 409
    const v3, 0x7f0200ae

    invoke-virtual {v12, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setItemTextColor(I)V

    .line 410
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v4           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v12           #mCamera:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    :cond_8
    const-string v3, "quickbox_mirror_order"

    const/16 v15, 0x1770

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v25

    .line 416
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v15, 0x7f0200a9

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 418
    .restart local v4       #mDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v13, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v13, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;-><init>(Landroid/content/Context;)V

    .line 420
    .local v13, mMirror:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    const v14, 0x7f040008

    const v16, 0x7f060062

    const-string v17, "quickbox_mirror_order"

    const-string v18, "com.asus.camera.mirror"

    move-object v15, v4

    invoke-virtual/range {v13 .. v18}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 423
    const v3, 0x7f0200ae

    invoke-virtual {v13, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setItemTextColor(I)V

    .line 424
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v4           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v13           #mMirror:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    :cond_9
    const-string v3, "quickbox_screenshot_order"

    const/16 v15, 0x1770

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v25

    .line 430
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v15, 0x7f0200ac

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 432
    .restart local v4       #mDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v14, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v14, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;-><init>(Landroid/content/Context;)V

    .line 433
    .local v14, mScreenshot:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    const v15, 0x7f040008

    const v17, 0x7f060063

    const-string v18, "quickbox_screenshot_order"

    const/16 v19, 0x0

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V

    .line 436
    const v3, 0x7f0200ae

    invoke-virtual {v14, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setItemTextColor(I)V

    .line 437
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mFunctionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .end local v4           #mDrawable:Landroid/graphics/drawable/Drawable;
    .end local v14           #mScreenshot:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
    :cond_a
    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 443
    .local v24, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;>;"
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 444
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    .line 445
    .local v22, i:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxList:Ljava/util/LinkedList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    .end local v22           #i:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    :cond_b
    const/16 v21, 0x0

    .line 449
    .local v21, count:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    .line 450
    .local v20, c:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMaxNum:I

    move/from16 v0, v21

    if-lt v0, v3, :cond_c

    .line 451
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v21

    add-int/lit16 v15, v0, 0x1388

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 454
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 453
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxContainerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxList:Ljava/util/LinkedList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mSwitchLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 456
    .end local v20           #c:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    :cond_d
    return-void
.end method

.method public detach()V
    .locals 5

    .prologue
    .line 682
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 683
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 684
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 685
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    goto :goto_0

    .line 688
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxList:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    .line 689
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    .line 690
    .local v0, c:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    .end local v0           #c:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->unRegister()V

    goto :goto_1

    .line 693
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMemInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    if-eqz v3, :cond_2

    .line 694
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMemInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->release()V

    .line 695
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 696
    return-void
.end method

.method public getControllers()Ljava/util/LinkedList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x1770

    .line 858
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 859
    .local v2, mCheckBoxList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;>;"
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 861
    .local v4, tmp:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;>;"
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_AIRPLANEMODE_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 863
    .local v3, order:I
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 864
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getAirplaneModeController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_AIRPLANEMODE_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getAirplaneModeController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    :cond_0
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFISHARING_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 871
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 872
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getWifiSharingController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFISHARING_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getWifiSharingController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    :cond_1
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_GPS_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 878
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 879
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getLocationController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_GPS_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getLocationController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    :cond_2
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_BLUETOOTH_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 885
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 886
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getBluetoothController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_BLUETOOTH_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getBluetoothController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    :cond_3
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_SILENT_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 892
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 893
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getSilentController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_SILENT_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getSilentController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    :cond_4
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFI_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 898
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 899
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getWifiController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFI_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getWifiController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    :cond_5
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_AUTOROTATE_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 905
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 906
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getAutoRotateController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_AUTOROTATE_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getAutoRotateController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    :cond_6
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_AUTOSYNC_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 913
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 914
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getAutoSyncController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_AUTOSYNC_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getAutoSyncController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :cond_7
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_INSTANTDIC_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 921
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 922
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getInstantDicController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_INSTANTDIC_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getInstantDicController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    :cond_8
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_MOBILEDATA_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 928
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 929
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getMobileDataController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_MOBILEDATA_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getMobileDataController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    :cond_9
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_NFC_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 935
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 936
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getNfcController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_NFC_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getNfcController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    :cond_a
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_POWERSAVING2_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 942
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 943
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getPowerSaving2Controller()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_POWERSAVING2_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getPowerSaving2Controller()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    :cond_b
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_SPLENDID_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 949
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 950
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getSplendidController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_SPLENDID_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getSplendidController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    :cond_c
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_VIBRATE_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 956
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 957
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getVibrateController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_VIBRATE_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getVibrateController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    :cond_d
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_ONEHAND_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 963
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 964
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getOnehandController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_ONEHAND_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getOnehandController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    :cond_e
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_MIRACAST_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 970
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 971
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getMiracastController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_MIRACAST_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getMiracastController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    :cond_f
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_USER_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 977
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 978
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getUserInfoController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_USER_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getUserInfoController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    :cond_10
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_GLOVEMODE_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 984
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 985
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getGloveModeController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_GLOVEMODE_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getGloveModeController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :cond_11
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_PLAYTO_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 991
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 992
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getPlayToController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_PLAYTO_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getPlayToController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    :cond_12
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_DUAL_APPS_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 999
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1000
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getDualAppsController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_DUAL_APPS_ORDER:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getDualAppsController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    :cond_13
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_DO_NOT_DISTURB_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 1007
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1008
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getDoNotDisturbController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_DO_NOT_DISTURB_ORDER:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getDoNotDisturbController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    :cond_14
    sget-object v5, Landroid/provider/Settings$System;->QUICK_SETTINGS_MULTISIM_ORDER:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v3

    .line 1015
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1016
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getMultiSimController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    sget-object v6, Landroid/provider/Settings$System;->QUICK_SETTINGS_MULTISIM_ORDER:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->getMultiSimController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    :cond_15
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1022
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1023
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    .line 1024
    .local v0, i:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1027
    .end local v0           #i:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    :cond_16
    return-object v2
.end method

.method public declared-synchronized getDoNotDisturbController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1369
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDNDisturb:Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;

    if-nez v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1371
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1372
    const v2, 0x7f040008

    const v3, 0x7f06004f

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_DO_NOT_DISTURB_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1373
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDNDisturb:Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDNDisturb:Lcom/android/systemui/statusbar/policy/QuickSettingsDoNotDisturbController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDualAppsController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDualApps:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    if-nez v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1344
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1345
    const v2, 0x7f040008

    const v3, 0x7f060066

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_DUAL_APPS_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1346
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDualApps:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    .line 1347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDualApps:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDualApps:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMultiSimController()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
    .locals 5

    .prologue
    .line 1384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMultiSim:Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;

    if-nez v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1386
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 1387
    const v2, 0x7f040008

    const v3, 0x7f06007b

    sget-object v4, Landroid/provider/Settings$System;->QUICK_SETTINGS_MULTISIM_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 1388
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMultiSim:Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;

    .line 1389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMultiSim:Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;->setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMultiSim:Lcom/android/systemui/statusbar/policy/QuickSettingsMultiSimController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyListChanged()V
    .locals 4

    .prologue
    .line 828
    monitor-enter p0

    const/4 v1, 0x0

    .line 829
    .local v1, updated:Z
    :try_start_0
    const-string v2, "QUICK_SETTINGS_ENABLED_CONTROLLERS"

    const v3, 0x21fffff

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 835
    .local v0, tmpEnabled:I
    if-nez v0, :cond_1

    .line 837
    const v2, 0x21fffff

    iput v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mEnabledControllers:I

    .line 838
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->resetToDefaultOrder()V

    .line 839
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->resetQBToDefaultOrder()V

    .line 840
    const/4 v1, 0x1

    .line 845
    :goto_0
    if-eqz v1, :cond_0

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshContainerView()V

    .line 847
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshQBContainerView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    :cond_0
    monitor-exit p0

    return-void

    .line 842
    :cond_1
    :try_start_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mEnabledControllers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 828
    .end local v0           #tmpEnabled:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected notifyUserSwitched()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->tryToResetData()V

    .line 700
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshContainerView()V

    .line 701
    return-void
.end method

.method reWrightDB()V
    .locals 3

    .prologue
    const/16 v2, 0x1770

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, order:I
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 245
    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_MOBILEDATA_ORDER:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 247
    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 248
    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_NFC_ORDER:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 250
    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 251
    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_POWERSAVING2_ORDER:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 253
    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 254
    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_SPLENDID_ORDER:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 256
    const/high16 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 257
    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_VIBRATE_ORDER:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 259
    const/high16 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 260
    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_ONEHAND_ORDER:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 262
    const/high16 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 263
    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_MIRACAST_ORDER:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 265
    const/high16 v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 266
    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_USER_ORDER:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 268
    const/high16 v1, 0x10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 269
    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_GLOVEMODE_ORDER:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 271
    const/high16 v1, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->loadSettings(Ljava/lang/String;I)I

    move-result v0

    .line 272
    sget-object v1, Landroid/provider/Settings$System;->QUICK_SETTINGS_MULTISIM_ORDER:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 273
    return-void
.end method

.method refreshCheckboxView()V
    .locals 2

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMemInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMemInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->updateMemInfo()V

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDualApps:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    if-eqz v0, :cond_1

    .line 1457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mDualApps:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardLock()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1458
    :cond_1
    return-void

    .line 1457
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetQBToDefaultOrder()V
    .locals 4

    .prologue
    const/16 v1, 0x1770

    .line 1580
    const-string v2, "quickbox_flashlight_order"

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.camera.flash"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.asus.flashlight"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0017

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1586
    const-string v2, "quickbox_boost_order"

    const-string v0, "com.asus.taskwidget"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1592
    const-string v2, "quickbox_calculator_order"

    const-string v0, "com.asus.calculator"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1598
    const-string v2, "quickbox_quickmemo_order"

    const-string v0, "com.asus.quickmemo"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_3
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1604
    const-string v2, "quickbox_dictionary_order"

    const-string v0, "com.asus.mydictionary"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_4
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1610
    const-string v2, "quickbox_audiowizard_order"

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "asus.hardware.sound.maxxaudio"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.asus.maxxaudio.audiowizard"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_5
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1616
    const-string v0, "quickbox_soundrecord_order"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1622
    const-string v2, "quickbox_fmradio_order"

    const-string v0, "com.asus.fmradio"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_6
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1628
    const-string v2, "quickbox_camera_order"

    const-string v0, "com.asus.camera"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a001b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_7
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1634
    const-string v2, "quickbox_mirror_order"

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.camera.front"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "com.asus.camera.mirror"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0020

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_8
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1640
    const-string v0, "quickbox_screenshot_order"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mIsScreenShotSupported:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 1645
    return-void

    :cond_2
    move v0, v1

    .line 1580
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 1586
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 1592
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 1598
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 1604
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 1610
    goto :goto_5

    :cond_8
    move v0, v1

    .line 1622
    goto :goto_6

    :cond_9
    move v0, v1

    .line 1628
    goto :goto_7

    :cond_a
    move v0, v1

    .line 1634
    goto :goto_8
.end method

.method protected resetToDefaultOrder()V
    .locals 4

    .prologue
    const/16 v1, 0x1770

    .line 730
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_AIRPLANEMODE_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isAirplaneModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 735
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFISHARING_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isWifiSharingSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 740
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_GPS_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isGPSSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0006

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 744
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_BLUETOOTH_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isBluetoothSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_3
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 749
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_SILENT_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSilentSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_4
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 754
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFI_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isWifiSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_5
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 758
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_AUTOROTATE_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isAutoRotateSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_6
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 763
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_AUTOSYNC_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isAutoSyncSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_7
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 768
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_INSTANTDIC_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isInstantDicSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_8
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 773
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_MOBILEDATA_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_9
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 777
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_NFC_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isNfcSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_a
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 781
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_POWERSAVING2_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isPowerSaving2Supported()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_b
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 785
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_SPLENDID_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isSplendidSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_c
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 789
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_VIBRATE_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isVibrateSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_d
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 793
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_ONEHAND_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isOnehandSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_e
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 798
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_MIRACAST_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isMiracastSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0010

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_f
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 802
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_USER_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isUserInfoSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const/high16 v3, 0x7f0a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_10
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 806
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_GLOVEMODE_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isGloveModeSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_11
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 810
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_PLAYTO_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isPlayToSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0011

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_12
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 814
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_DUAL_APPS_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isDualAppsSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_13
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 818
    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_DO_NOT_DISTURB_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isDoNotDisturbSupported()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v3, 0x7f0a0013

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_14
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 822
    sget-object v0, Landroid/provider/Settings$System;->QUICK_SETTINGS_MULTISIM_ORDER:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->isMultiSimSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->saveSettings(Ljava/lang/String;I)V

    .line 825
    return-void

    :cond_1
    move v0, v1

    .line 730
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 735
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 740
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 744
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 749
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 754
    goto/16 :goto_5

    :cond_7
    move v0, v1

    .line 758
    goto/16 :goto_6

    :cond_8
    move v0, v1

    .line 763
    goto/16 :goto_7

    :cond_9
    move v0, v1

    .line 768
    goto/16 :goto_8

    :cond_a
    move v0, v1

    .line 773
    goto/16 :goto_9

    :cond_b
    move v0, v1

    .line 777
    goto/16 :goto_a

    :cond_c
    move v0, v1

    .line 781
    goto/16 :goto_b

    :cond_d
    move v0, v1

    .line 785
    goto/16 :goto_c

    :cond_e
    move v0, v1

    .line 789
    goto/16 :goto_d

    :cond_f
    move v0, v1

    .line 793
    goto/16 :goto_e

    :cond_10
    move v0, v1

    .line 798
    goto/16 :goto_f

    :cond_11
    move v0, v1

    .line 802
    goto/16 :goto_10

    :cond_12
    move v0, v1

    .line 806
    goto/16 :goto_11

    :cond_13
    move v0, v1

    .line 810
    goto :goto_12

    :cond_14
    move v0, v1

    .line 814
    goto :goto_13

    :cond_15
    move v0, v1

    .line 818
    goto :goto_14
.end method

.method resetToast()V
    .locals 2

    .prologue
    .line 670
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllersMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 672
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->resetToast()V

    .line 676
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;>;"
    :cond_0
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "phoneStatusBar"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    .line 239
    return-void
.end method

.method setup()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->tryToResetData()V

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->setupQuickSettings()V

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkQBDB()V

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->checkSettingsDB()V

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->updateResources()V

    .line 281
    return-void
.end method

.method setupQuickSettings()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuicksettingContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->addQuickbox(Landroid/view/ViewGroup;)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuicksettingContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->addCheckbox(Landroid/view/ViewGroup;)V

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshOrders()V

    .line 289
    return-void
.end method

.method updateItemLayout(Z)V
    .locals 4

    .prologue
    .line 1433
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    .line 1436
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mControllers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    .line 1437
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1438
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1439
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mR:Landroid/content/res/Resources;

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 1441
    :cond_1
    return-void
.end method

.method updateResources()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuicksettingContainerView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->updateResources()V

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuicksettingContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxContainerView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->updateResources()V

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mQuickboxContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 667
    return-void
.end method
