.class public Lcom/android/systemui/recent/DualAppsService;
.super Landroid/app/Service;
.source "DualAppsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/DualAppsService$Receiver;,
        Lcom/android/systemui/recent/DualAppsService$Observer;,
        Lcom/android/systemui/recent/DualAppsService$LocalBinder;,
        Lcom/android/systemui/recent/DualAppsService$Callback;
    }
.end annotation


# instance fields
.field private mBackupAppThumbnails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mBinder:Landroid/os/IBinder;

.field mCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/DualAppsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mDualListReady:Z

.field mFocusApp:Ljava/lang/StringBuilder;

.field mIntent:Landroid/content/Intent;

.field mReceiver:Lcom/android/systemui/recent/DualAppsService$Receiver;

.field mTaskId:I

.field mTopDid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/android/systemui/recent/DualAppsService;->mDualListReady:Z

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mBackupAppThumbnails:Ljava/util/HashMap;

    .line 37
    new-instance v0, Lcom/android/systemui/recent/DualAppsService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/DualAppsService$LocalBinder;-><init>(Lcom/android/systemui/recent/DualAppsService;)V

    iput-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mBinder:Landroid/os/IBinder;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mFocusApp:Ljava/lang/StringBuilder;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mCallback:Ljava/util/ArrayList;

    .line 40
    iput v1, p0, Lcom/android/systemui/recent/DualAppsService;->mTaskId:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/recent/DualAppsService;->mTopDid:I

    .line 282
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/DualAppsService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/DualAppsService;->setDualAppReady(Z)V

    return-void
.end method

.method private setDualAppReady(Z)V
    .locals 0
    .parameter "ready"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/android/systemui/recent/DualAppsService;->mDualListReady:Z

    .line 213
    return-void
.end method


# virtual methods
.method public changeQuickSettings()V
    .locals 4

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/recent/DualAppsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "asus_overlay_display_show"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, enabled:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/DualAppsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "set_dual_apps_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    return-void
.end method

.method public deviceReady(I)V
    .locals 4
    .parameter "displayId"

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/systemui/recent/DualAppsService;->mCallback:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 127
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/systemui/recent/DualAppsService;->mCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/DualAppsService$Callback;

    .line 129
    .local v0, callback:Lcom/android/systemui/recent/DualAppsService$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/recent/DualAppsService$Callback;->onDisplayAdded(I)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v0           #callback:Lcom/android/systemui/recent/DualAppsService$Callback;
    :cond_0
    return-void
.end method

.method public getBottomDid()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/systemui/recent/DualAppsService;->mTopDid:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getFocusApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mFocusApp:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedAppIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getFocusedAppTaskId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/systemui/recent/DualAppsService;->mTaskId:I

    return v0
.end method

.method public getTopDid()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/systemui/recent/DualAppsService;->mTopDid:I

    return v0
.end method

.method public isOpen(I)Z
    .locals 3
    .parameter "displayId"

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, state:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/recent/DualAppsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "asus_overlay_display_devices_status"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    const-string v1, "ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/DualAppsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "asus_overlay_display_ext_status"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 92
    new-instance v1, Lcom/android/systemui/recent/DualAppsService$Receiver;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/DualAppsService$Receiver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recent/DualAppsService;->mReceiver:Lcom/android/systemui/recent/DualAppsService$Receiver;

    .line 93
    invoke-virtual {p0, p0}, Lcom/android/systemui/recent/DualAppsService;->registerObserver(Landroid/content/Context;)V

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "ACTION_DUAL_APP_ACTIVITY_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.android.systemui.recent.action.DUAL_APPS_LIST_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/recent/DualAppsService;->mReceiver:Lcom/android/systemui/recent/DualAppsService$Receiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recent/DualAppsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/recent/DualAppsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "asus_overlay_display_top"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/DualAppsService;->mTopDid:I

    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mReceiver:Lcom/android/systemui/recent/DualAppsService$Receiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/DualAppsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    return-void
.end method

.method public openDualApps()V
    .locals 9

    .prologue
    .line 175
    const-string v5, "display"

    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/DualAppsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 176
    .local v3, manager:Landroid/hardware/display/DisplayManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 177
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 178
    .local v2, info:Landroid/view/DisplayInfo;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 179
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v6

    if-le v5, v6, :cond_0

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    .line 181
    .local v4, sw:I
    :goto_0
    iget v1, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 182
    .local v1, dpi:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/DualAppsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "asus_overlay_display_devices"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/recent/DualAppsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "asus_overlay_display_devices"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    return-void

    .line 179
    .end local v1           #dpi:I
    .end local v4           #sw:I
    :cond_0
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    goto :goto_0
.end method

.method public registerObserver(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_overlay_display_top"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recent/DualAppsService$Observer;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, p1}, Lcom/android/systemui/recent/DualAppsService$Observer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_overlay_display_devices_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recent/DualAppsService$Observer;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, p1}, Lcom/android/systemui/recent/DualAppsService$Observer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_overlay_display_ext_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recent/DualAppsService$Observer;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, p1}, Lcom/android/systemui/recent/DualAppsService$Observer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_overlay_display_show"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recent/DualAppsService$Observer;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, p1}, Lcom/android/systemui/recent/DualAppsService$Observer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 208
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/DualAppsService$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public setDidAtTop(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/recent/DualAppsService;->mTopDid:I

    .line 54
    return-void
.end method

.method public setFocusApp(Ljava/lang/String;)V
    .locals 2
    .parameter "pkg"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mFocusApp:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mFocusApp:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    return-void
.end method

.method public setFocusedAppIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/systemui/recent/DualAppsService;->mIntent:Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public setFocusedAppTaskId(I)V
    .locals 0
    .parameter "taskId"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/systemui/recent/DualAppsService;->mTaskId:I

    .line 70
    return-void
.end method

.method public setShowStatus(ZI)V
    .locals 3
    .parameter "show"
    .parameter "displayId"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    const-string v0, "1"

    .line 162
    .local v0, state:Ljava/lang/String;
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 172
    :goto_1
    return-void

    .line 161
    .end local v0           #state:Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 164
    .restart local v0       #state:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/DualAppsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "asus_overlay_display_show"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 168
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/DualAppsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "asus_overlay_display_ext_show"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
