.class public Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsInstantDicController.java"


# instance fields
.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 6
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 63
    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mObserver:Landroid/database/ContentObserver;

    .line 71
    const v1, 0x7f060032

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mToastTextOn:I

    .line 72
    const v1, 0x7f060033

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mToastTextOff:I

    .line 73
    const v1, 0x7f060031

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mCheckText:I

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setting_instant_dictionary"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 77
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    return-void
.end method

.method public static NotifyAsusTranslator(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "action"

    .prologue
    .line 47
    const-string v4, "QuickSettingsInstantDicController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotifyAsusTranslator, action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v1, "com.asus.translator"

    .line 50
    .local v1, PACKAGE_NAME:Ljava/lang/String;
    const-string v2, "com.asus.translator.service.FloatService"

    .line 52
    .local v2, SERVICE_CLASS:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, INTENT_FOR_SERVICE:Landroid/content/Intent;
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v3, data:Landroid/os/Bundle;
    const-string v4, "action"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "mContext"
    .parameter "className"

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, isRunning:Z
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 127
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 128
    .local v3, serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 129
    const/4 v4, 0x0

    .line 137
    :goto_0
    return v4

    .line 131
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 132
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 133
    const/4 v2, 0x1

    :cond_1
    move v4, v2

    .line 137
    goto :goto_0

    .line 131
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 5

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    const-string v2, "setting_instant_dictionary"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 88
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 90
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 4
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v0

    .line 97
    .local v0, type:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    const-string v1, "QuickSettingsInstantDicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveModeChanged, type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 145
    :cond_0
    return-void
.end method

.method protected setMode(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    .line 103
    const-string v1, "QuickSettingsInstantDicController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    move v0, p1

    .line 105
    .local v0, mEnabled:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;Z)V

    const-wide/16 v3, 0xd2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    const/4 v1, 0x1

    return v1
.end method
