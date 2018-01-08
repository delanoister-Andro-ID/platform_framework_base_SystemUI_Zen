.class public Lcom/maxdev/systemui/WeatherIcon;
.super Landroid/widget/ImageView;
.source "WeatherIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maxdev/systemui/WeatherIcon$SettingsObserver;
    }
.end annotation


# static fields
.field public static final EXTRA_CONDITION:Ljava/lang/String; = "condition"

.field public static final EXTRA_CONDITION_CODE:Ljava/lang/String; = "condition_code"

.field private static final TAG:Ljava/lang/String; = "WeatherPanel"


# instance fields
.field private level:I

.field private mAttached:Z

.field private mCondition_code:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mSettingsObserver:Lcom/maxdev/systemui/WeatherIcon$SettingsObserver;

.field weatherReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/maxdev/systemui/WeatherIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 33
    const/16 v1, 0x64

    iput v1, p0, Lcom/maxdev/systemui/WeatherIcon;->level:I

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lcom/maxdev/systemui/WeatherIcon;->mCondition_code:Ljava/lang/String;

    .line 43
    new-instance v1, Lcom/maxdev/systemui/WeatherIcon$1;

    invoke-direct {v1, p0}, Lcom/maxdev/systemui/WeatherIcon$1;-><init>(Lcom/maxdev/systemui/WeatherIcon;)V

    iput-object v1, p0, Lcom/maxdev/systemui/WeatherIcon;->weatherReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/maxdev/systemui/WeatherIcon$SettingsObserver;

    invoke-virtual {p0}, Lcom/maxdev/systemui/WeatherIcon;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/maxdev/systemui/WeatherIcon$SettingsObserver;-><init>(Lcom/maxdev/systemui/WeatherIcon;Landroid/os/Handler;)V

    .line 41
    .local v0, so:Lcom/maxdev/systemui/WeatherIcon$SettingsObserver;
    return-void
.end method

.method private SetupIcon()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 51
    iget-object v2, p0, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pref_maxdev_weather_image_icon"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 52
    .local v0, option:I
    const/4 v1, 0x0

    .line 53
    .local v1, resId:I
    if-ne v0, v4, :cond_1

    .line 54
    iget-object v2, p0, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "weather_condition"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 60
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/maxdev/systemui/WeatherIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    iget-object v2, p0, Lcom/maxdev/systemui/WeatherIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/maxdev/systemui/WeatherIcon;->level:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 62
    iget-object v2, p0, Lcom/maxdev/systemui/WeatherIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/maxdev/systemui/WeatherIcon;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void

    .line 55
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "weather_condition_2"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 57
    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "weather_condition_3"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private UpdateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_maxdev_weather_icon"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/maxdev/systemui/WeatherIcon;->setVisibility(I)V

    .line 77
    invoke-direct {p0}, Lcom/maxdev/systemui/WeatherIcon;->SetupIcon()V

    .line 78
    return-void

    .line 76
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/maxdev/systemui/WeatherIcon;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/maxdev/systemui/WeatherIcon;->UpdateSettings()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 112
    iget-boolean v1, p0, Lcom/maxdev/systemui/WeatherIcon;->mAttached:Z

    if-nez v1, :cond_0

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/maxdev/systemui/WeatherIcon;->mAttached:Z

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.pac.INTENT_WEATHER_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/maxdev/systemui/WeatherIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/maxdev/systemui/WeatherIcon;->weatherReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/maxdev/systemui/WeatherIcon;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 117
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 123
    iget-boolean v0, p0, Lcom/maxdev/systemui/WeatherIcon;->mAttached:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maxdev/systemui/WeatherIcon;->mAttached:Z

    .line 125
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/maxdev/systemui/WeatherIcon;->weatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    :cond_0
    return-void
.end method

.method public updateIcon(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 67
    const-string v0, "condition_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/maxdev/systemui/WeatherIcon;->mCondition_code:Ljava/lang/String;

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherIcon;->mCondition_code:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/maxdev/systemui/WeatherIcon;->level:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/maxdev/systemui/WeatherIcon;->SetupIcon()V

    .line 73
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method
