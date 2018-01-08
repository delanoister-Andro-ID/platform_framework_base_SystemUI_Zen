.class public Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;
.super Landroid/widget/RelativeLayout;
.source "AsusQuickSettingsBrightness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;
    }
.end annotation


# static fields
.field private static mAutoBrightnessAvailable:Z

.field private static mAutoBrightnessValue:I

.field private static mAutoMode:Z

.field private static mBackLightRange:I

.field private static mDeviceConf:Landroid/util/DeviceConf;

.field private static mHighBrightnessAvailable:Z

.field private static mMaximumBackLight:I

.field private static mMinimumBackLight:I


# instance fields
.field private final DEFAULT_GAIN:F

.field private final DEFAULT_GAIN_ARRAY:[F

.field private GAIN_ARRAY:[F

.field private RATIO:F

.field private THRESHOLD_HIGH:I

.field private THRESHOLD_LOW:I

.field lightSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mAutoModeObserver:Landroid/database/ContentObserver;

.field private mAutoToggle:Landroid/widget/CheckBox;

.field private mBrightness:Landroid/view/View;

.field private mBrightnessCallback:Landroid/os/IBrightnessListener;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCr:Landroid/content/ContentResolver;

.field private mGain:F

.field private mHighBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mHighBrightnessToggle:Landroid/widget/CheckBox;

.field private mIsTracking:Z

.field private mOnChangeListener:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;

.field private mOutdoor:Z

.field private mPower:Landroid/os/IPowerManager;

.field private mSlider:Landroid/widget/SeekBar;

.field private mTempAutoMode:Z

.field private mToast:Lcom/android/systemui/statusbar/policy/MyToast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const/16 v0, 0xa

    sput v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMinimumBackLight:I

    .line 58
    const/16 v0, 0xff

    sput v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMaximumBackLight:I

    .line 59
    sget v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMaximumBackLight:I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMinimumBackLight:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBackLightRange:I

    .line 60
    sget v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMaximumBackLight:I

    sput v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoBrightnessValue:I

    .line 61
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessAvailable:Z

    .line 62
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoBrightnessAvailable:Z

    .line 63
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoMode:Z

    .line 71
    new-instance v0, Landroid/util/DeviceConf;

    const-string v1, "brightness"

    invoke-direct {v0, v1}, Landroid/util/DeviceConf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mDeviceConf:Landroid/util/DeviceConf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    .line 217
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOnChangeListener:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;

    .line 56
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mIsTracking:Z

    .line 67
    iput v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->DEFAULT_GAIN:F

    .line 68
    const/4 v3, 0x7

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->DEFAULT_GAIN_ARRAY:[F

    .line 69
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->DEFAULT_GAIN_ARRAY:[F

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F

    .line 74
    const-string v3, "persist.asus.lux_threshold_h"

    const/16 v4, 0xbb8

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->THRESHOLD_HIGH:I

    .line 75
    const-string v3, "persist.asus.lux_threshold_l"

    const/16 v4, 0x7d0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->THRESHOLD_LOW:I

    .line 76
    const-string v3, "persist.asus.bri_ratio"

    const/16 v4, 0x50

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->RATIO:F

    .line 77
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOutdoor:Z

    .line 179
    new-instance v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$1;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 185
    new-instance v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoModeObserver:Landroid/database/ContentObserver;

    .line 206
    new-instance v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$3;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 452
    new-instance v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$5;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightnessCallback:Landroid/os/IBrightnessListener;

    .line 477
    new-instance v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->lightSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 221
    :try_start_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mDeviceConf:Landroid/util/DeviceConf;

    const-string v4, "gainArray"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->DEFAULT_GAIN_ARRAY:[F

    invoke-virtual {v3, v4, v5}, Landroid/util/DeviceConf;->getFloatArray(Ljava/lang/String;[F)[F

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->isHighBrightnessAvailable()Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessAvailable:Z

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->isAutoBrightnessAvailable()Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoBrightnessAvailable:Z

    .line 230
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoBrightnessAvailable:Z

    if-eqz v3, :cond_4

    .line 231
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessAvailable:Z

    if-eqz v3, :cond_3

    .line 232
    const v3, 0x7f04002e

    invoke-static {p1, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 244
    :goto_1
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 245
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v3

    sput v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMinimumBackLight:I

    .line 246
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v3

    sput v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMaximumBackLight:I

    .line 247
    sget v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMaximumBackLight:I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMinimumBackLight:I

    sub-int/2addr v3, v4

    sput v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBackLightRange:I

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    .line 249
    const-string v3, ""

    invoke-static {p1, v3, v6}, Lcom/android/systemui/statusbar/policy/MyToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/systemui/statusbar/policy/MyToast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    .line 250
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/systemui/statusbar/policy/MyToast;->setGravity(III)V

    .line 251
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mPower:Landroid/os/IPowerManager;

    .line 252
    const v3, 0x7f0b0096

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessToggle:Landroid/widget/CheckBox;

    .line 253
    const v3, 0x7f0b0093

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightness:Landroid/view/View;

    .line 254
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessAvailable:Z

    if-eqz v3, :cond_6

    .line 255
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessToggle:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 257
    .local v1, mDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessToggle:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessToggle:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOnChangeListener:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .end local v1           #mDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_2
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoBrightnessAvailable:Z

    if-eqz v3, :cond_1

    .line 268
    const v3, 0x7f0b0094

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoToggle:Landroid/widget/CheckBox;

    .line 269
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoToggle:Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 271
    .restart local v1       #mDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoToggle:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoToggle:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOnChangeListener:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    .end local v1           #mDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    const v3, 0x7f0b0095

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;

    .line 276
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMaximumBackLight:I

    sget v5, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMinimumBackLight:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 277
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOnChangeListener:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 278
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoBrightnessAvailable:Z

    if-eqz v3, :cond_2

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getAutoMode()Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoMode:Z

    .line 281
    :cond_2
    return-void

    .line 223
    .end local v2           #pm:Landroid/os/PowerManager;
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->DEFAULT_GAIN_ARRAY:[F

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F

    goto/16 :goto_0

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const v3, 0x7f04002c

    invoke-static {p1, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1

    .line 237
    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessAvailable:Z

    if-eqz v3, :cond_5

    .line 238
    const v3, 0x7f04002d

    invoke-static {p1, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1

    .line 240
    :cond_5
    const v3, 0x7f04002f

    invoke-static {p1, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1

    .line 261
    .restart local v2       #pm:Landroid/os/PowerManager;
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightness:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 263
    .restart local v1       #mDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightness:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightness:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOnChangeListener:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 68
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3ft
        0x33t 0x33t 0xb3t 0x3ft
        0xcdt 0xcct 0xcct 0x3ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessToggle:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mIsTracking:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mIsTracking:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/os/IPowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mPower:Landroid/os/IPowerManager;

    return-object v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBackLightRange:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOutdoor:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOutdoor:Z

    return p1
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMaximumBackLight:I

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMinimumBackLight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->RATIO:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mTempAutoMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->showToast(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->setBrightnessValue(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->updateHighBrightnessViews()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getAutoMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightnessObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->registerAutoBrightness(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->updateBrightnessViews()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->startGetLux()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->endGetLux()V

    return-void
.end method

.method static synthetic access$2902(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    sput p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoBrightnessValue:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->setHighBrightnessMode(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->THRESHOLD_HIGH:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->THRESHOLD_LOW:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoToggle:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->setAutoMode(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getBrightnessValue()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->changeBrightness(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightness:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoMode:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoMode:Z

    return p0
.end method

.method private changeBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private endGetLux()V
    .locals 3

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 474
    .local v0, sensorMgr:Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->lightSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 475
    return-void
.end method

.method private getAutoBrightness()I
    .locals 1

    .prologue
    .line 434
    sget v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoBrightnessValue:I

    return v0
.end method

.method private getAutoMode()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 418
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 419
    .local v0, audoMode:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBrightnessValue()I
    .locals 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    sget v2, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMinimumBackLight:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getHighBrightnessMode()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 409
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    const-string v3, "screen_high_brightness_mode"

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 410
    .local v0, highBrightnessMode:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAutoBrightnessAvailable()Z
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 405
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.sensor.light"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isHighBrightnessAvailable()Z
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 400
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v1, "asus.hardware.display.high_brightness"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private registerAutoBrightness(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    .line 340
    if-eqz p1, :cond_4

    .line 341
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, match:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 344
    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F

    aget v3, v3, v0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 345
    const/4 v1, 0x1

    .line 346
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 350
    :cond_0
    if-nez v1, :cond_2

    .line 351
    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F

    aget v3, v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 352
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 357
    .end local v0           #i:I
    .end local v1           #match:Z
    :cond_2
    :goto_1
    return-void

    .line 343
    .restart local v0       #i:I
    .restart local v1       #match:Z
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0           #i:I
    .end local v1           #match:Z
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBackLightRange:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_1
.end method

.method private registerUpdate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 309
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessAvailable:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    const-string v1, "screen_high_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 313
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoBrightnessAvailable:Z

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 317
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoMode:Z

    if-eqz v0, :cond_2

    .line 318
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->registerAutoBrightness(Z)V

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private setAutoMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 423
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 426
    .local v0, mode:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 427
    return-void

    .line 423
    .end local v0           #mode:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBrightnessValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 438
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$4;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method private setHighBrightnessMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    const-string v2, "screen_high_brightness_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 415
    return-void

    .line 414
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 1
    .parameter "text"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/MyToast;->setText(I)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MyToast;->show()V

    .line 362
    return-void
.end method

.method private startGetLux()V
    .locals 4

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 468
    .local v1, sensorMgr:Landroid/hardware/SensorManager;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 469
    .local v0, lightSensor:Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->lightSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 470
    return-void
.end method

.method private unregisterUpdate()V
    .locals 2

    .prologue
    .line 326
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessAvailable:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 329
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoBrightnessAvailable:Z

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 332
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoMode:Z

    if-eqz v0, :cond_2

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->registerAutoBrightness(Z)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private updateBrightnessViews()V
    .locals 6

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 378
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoMode:Z

    if-eqz v2, :cond_2

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getAutoBrightness()I

    move-result v1

    .line 392
    .local v1, value:I
    :goto_1
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mIsTracking:Z

    if-nez v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 381
    .end local v1           #value:I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getBrightnessValue()I

    move-result v1

    .line 382
    .restart local v1       #value:I
    const/high16 v0, 0x3f80

    .line 383
    .local v0, position:F
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOutdoor:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMaximumBackLight:I

    if-ne v1, v2, :cond_3

    .line 384
    const/high16 v0, 0x3f80

    .line 390
    :goto_2
    sget v2, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBackLightRange:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    goto :goto_1

    .line 386
    :cond_3
    int-to-float v2, v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->RATIO:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 387
    sget v2, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mMinimumBackLight:I

    sub-int v2, v1, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    mul-float/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBackLightRange:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 388
    float-to-double v2, v0

    const-wide v4, 0x3fdd1745d1745d17L

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_2
.end method

.method private updateHighBrightnessViews()V
    .locals 2

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getHighBrightnessMode()Z

    move-result v0

    .line 366
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessToggle:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessToggle:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 369
    :cond_0
    return-void
.end method


# virtual methods
.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 284
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 285
    if-nez p2, :cond_3

    .line 286
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoBrightnessAvailable:Z

    if-eqz v1, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getAutoMode()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoMode:Z

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoToggle:Landroid/widget/CheckBox;

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoMode:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getAutoBrightnessGain()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->registerUpdate()V

    .line 297
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessAvailable:Z

    if-eqz v1, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->updateHighBrightnessViews()V

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->updateBrightnessViews()V

    .line 301
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoMode:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->startGetLux()V

    .line 306
    :cond_2
    :goto_1
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Landroid/os/RemoteException;
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F

    goto :goto_0

    .line 303
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->unregisterUpdate()V

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->endGetLux()V

    goto :goto_1
.end method
