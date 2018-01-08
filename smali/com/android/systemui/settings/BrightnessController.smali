.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# instance fields
.field private mAutomaticAvailable:Z

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private final mHandler:Landroid/os/Handler;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private final mPower:Landroid/os/IPowerManager;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 5
    .parameter "context"
    .parameter "icon"
    .parameter "control"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 112
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    .line 114
    iput-object p3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 115
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v3, Lcom/android/systemui/settings/BrightnessController$1;

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 123
    new-instance v3, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    .line 124
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {v3}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->startObserving()V

    .line 126
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 127
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 128
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 131
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 132
    .local v0, manager:Landroid/hardware/SensorManager;
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 133
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 135
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 137
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateMode()V

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateSlider()V

    .line 144
    invoke-virtual {p3, p0}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    .line 145
    return-void

    .line 135
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateSlider()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 194
    return-void
.end method

.method private updateIcon(Z)V
    .locals 2
    .parameter "automatic"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f0200f2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    :cond_0
    return-void

    .line 205
    :cond_1
    const v0, 0x7f0200f1

    goto :goto_0
.end method

.method private updateMode()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 213
    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    if-eqz v2, :cond_2

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness_mode"

    const/4 v6, -0x2

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 222
    .local v0, automatic:I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    .line 223
    if-eqz v0, :cond_1

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    .line 228
    .end local v0           #automatic:I
    :goto_3
    return-void

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #automatic:I
    goto :goto_0

    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 222
    goto :goto_1

    :cond_1
    move v3, v4

    .line 223
    goto :goto_2

    .line 225
    .end local v0           #automatic:I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v2, v4}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    .line 226
    invoke-direct {p0, v4}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    goto :goto_3
.end method

.method private updateSlider()V
    .locals 5

    .prologue
    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 240
    .local v1, value:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 241
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 242
    return-void

    .line 237
    .end local v1           #value:I
    :catch_0
    move-exception v0

    .line 238
    .local v0, ex:Landroid/provider/Settings$SettingNotFoundException;
    iget v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .restart local v1       #value:I
    goto :goto_0
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V
    .locals 4
    .parameter "view"
    .parameter "tracking"
    .parameter "automatic"
    .parameter "value"

    .prologue
    .line 168
    if-eqz p3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/settings/BrightnessController;->setMode(I)V

    .line 170
    invoke-direct {p0, p3}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    .line 171
    if-nez p3, :cond_0

    .line 172
    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    add-int v2, p4, v3

    .line 173
    .local v2, val:I
    invoke-direct {p0, v2}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    .line 174
    if-nez p2, :cond_0

    .line 175
    new-instance v3, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 185
    .end local v2           #val:I
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 186
    .local v0, cb:Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    .line 168
    .end local v0           #cb:Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 188
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0
    .parameter "control"

    .prologue
    .line 158
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->stopObserving()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 165
    return-void
.end method
