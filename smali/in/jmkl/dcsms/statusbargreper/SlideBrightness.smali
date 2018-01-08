.class public Lin/jmkl/dcsms/statusbargreper/SlideBrightness;
.super Landroid/widget/SeekBar;
.source "SlideBrightness.java"


# instance fields
.field private BackLightValue:F

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->context:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->context:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput-object p1, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->context:Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->init()V

    .line 20
    return-void
.end method

.method static synthetic access$0(Lin/jmkl/dcsms/statusbargreper/SlideBrightness;F)V
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->BackLightValue:F

    return-void
.end method

.method static synthetic access$1(Lin/jmkl/dcsms/statusbargreper/SlideBrightness;)F
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->BackLightValue:F

    return v0
.end method

.method static synthetic access$2(Lin/jmkl/dcsms/statusbargreper/SlideBrightness;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->context:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 43
    iget-object v2, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 44
    const v3, 0x7f020248

    .line 43
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {p0}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 46
    const/16 v2, 0xff

    invoke-virtual {p0, v2}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->setMax(I)V

    .line 49
    const v2, 0x3dcccccd

    iput v2, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->BackLightValue:F

    .line 50
    const/4 v1, 0x0

    .line 53
    .local v1, pros:I
    :try_start_0
    iget-object v2, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 54
    const-string v3, "screen_brightness"

    .line 53
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 55
    const-string v2, "ONLOAD"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-virtual {p0, v1}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->setProgress(I)V

    .line 63
    new-instance v2, Lin/jmkl/dcsms/statusbargreper/SlideBrightness$1;

    invoke-direct {v2, p0}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness$1;-><init>(Lin/jmkl/dcsms/statusbargreper/SlideBrightness;)V

    invoke-virtual {p0, v2}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 38
    invoke-direct {p0}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->init()V

    .line 39
    return-void
.end method
