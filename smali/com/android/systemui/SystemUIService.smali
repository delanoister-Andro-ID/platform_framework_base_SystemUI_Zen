.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# static fields
.field private static final TRACKER_SWITCHER:Z

.field public static sEnableTracker:Z


# instance fields
.field private final SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mAsusAnalyticsObserver:Landroid/database/ContentObserver;

.field private final mServices:[Lcom/android/systemui/SystemUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    const-string v1, "debug.monkey"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/systemui/SystemUIService;->TRACKER_SWITCHER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/systemui/recent/Recents;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/systemui/statusbar/SystemBars;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/systemui/usb/AsusStorageNotification;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/systemui/power/PowerUI;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/systemui/media/RingtonePlayer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/systemui/settings/SettingsUI;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Class;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .line 64
    new-instance v0, Lcom/android/systemui/SystemUIService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/SystemUIService$1;-><init>(Lcom/android/systemui/SystemUIService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->mAsusAnalyticsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SystemUIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/SystemUIService;->checkAndSetEnableState()V

    return-void
.end method

.method private checkAndSetEnableState()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, newIsGaEnableValue:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "asus_analytics"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 159
    :goto_0
    if-eqz v1, :cond_1

    sget-boolean v4, Lcom/android/systemui/SystemUIService;->TRACKER_SWITCHER:Z

    if-eqz v4, :cond_1

    :goto_1
    sput-boolean v2, Lcom/android/systemui/SystemUIService;->sEnableTracker:Z

    .line 160
    return-void

    :cond_0
    move v1, v3

    .line 154
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "SystemUIService"

    const-string v5, "ASUS_ANALYTICS not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v2, v3

    .line 159
    goto :goto_1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 124
    if-eqz p3, :cond_0

    array-length v6, p3

    if-nez v6, :cond_1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .local v0, arr$:[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 126
    .local v5, ui:Lcom/android/systemui/SystemUI;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumping service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0           #arr$:[Lcom/android/systemui/SystemUI;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #ui:Lcom/android/systemui/SystemUI;
    :cond_1
    const/4 v6, 0x0

    aget-object v4, p3, v6

    .line 131
    .local v4, svc:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .restart local v0       #arr$:[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 132
    .restart local v5       #ui:Lcom/android/systemui/SystemUI;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 134
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 131
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #svc:Ljava/lang/String;
    .end local v5           #ui:Lcom/android/systemui/SystemUI;
    :cond_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .local v0, arr$:[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 110
    .local v3, ui:Lcom/android/systemui/SystemUI;
    invoke-virtual {v3, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v3           #ui:Lcom/android/systemui/SystemUI;
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 10

    .prologue
    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v2, components:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Class;

    array-length v0, v5

    .line 79
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 80
    iget-object v5, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Class;

    aget-object v1, v5, v4

    .line 81
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "SystemUIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/SystemUI;

    aput-object v5, v6, v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    iget-object v5, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v5, v5, v4

    iput-object p0, v5, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 90
    iget-object v5, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v5, v5, v4

    iput-object v2, v5, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 91
    const-string v5, "SystemUIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "running: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v5, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/systemui/SystemUI;->start()V

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v3

    .line 85
    .local v3, ex:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 86
    .end local v3           #ex:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 87
    .local v3, ex:Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 95
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #ex:Ljava/lang/InstantiationException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "asus_analytics"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/SystemUIService;->mAsusAnalyticsObserver:Landroid/database/ContentObserver;

    const/4 v9, -0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/SystemUIService;->checkAndSetEnableState()V

    .line 102
    sget-boolean v5, Lcom/android/systemui/SystemUIService;->sEnableTracker:Z

    if-eqz v5, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->serviceStart()V

    .line 105
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 145
    sget-boolean v0, Lcom/android/systemui/SystemUIService;->sEnableTracker:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->serviceStop()V

    .line 148
    :cond_0
    return-void
.end method

.method public serviceStart()V
    .locals 1

    .prologue
    .line 165
    const-string v0, "HWZKPXRJ8QS3TG9BF65G"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public serviceStop()V
    .locals 0

    .prologue
    .line 171
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 172
    return-void
.end method
