.class public Lcom/maxdev/systemui/WeatherText;
.super Landroid/widget/TextView;
.source "WeatherText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maxdev/systemui/WeatherText$SettingsObserver;
    }
.end annotation


# static fields
.field public static final EXTRA_CITY:Ljava/lang/String; = "city"

.field public static final EXTRA_CONDITION:Ljava/lang/String; = "condition"

.field public static final EXTRA_FORECAST_DATE:Ljava/lang/String; = "forecast_date"

.field public static final EXTRA_HIGH:Ljava/lang/String; = "todays_high"

.field public static final EXTRA_HUMIDITY:Ljava/lang/String; = "humidity"

.field public static final EXTRA_LOW:Ljava/lang/String; = "todays_low"

.field public static final EXTRA_TEMP:Ljava/lang/String; = "temp"

.field public static final EXTRA_WIND:Ljava/lang/String; = "wind"


# instance fields
.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private mShowLocation:Z

.field weatherReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v2, Lcom/maxdev/systemui/WeatherText$1;

    invoke-direct {v2, p0}, Lcom/maxdev/systemui/WeatherText$1;-><init>(Lcom/maxdev/systemui/WeatherText;)V

    iput-object v2, p0, Lcom/maxdev/systemui/WeatherText;->weatherReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/maxdev/systemui/WeatherText;->mContext:Landroid/content/Context;

    .line 42
    iget-object v2, p0, Lcom/maxdev/systemui/WeatherText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 43
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/maxdev/systemui/WeatherText$SettingsObserver;

    invoke-virtual {p0}, Lcom/maxdev/systemui/WeatherText;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/maxdev/systemui/WeatherText$SettingsObserver;-><init>(Lcom/maxdev/systemui/WeatherText;Landroid/os/Handler;)V

    .line 44
    .local v1, so:Lcom/maxdev/systemui/WeatherText$SettingsObserver;
    return-void
.end method

.method static synthetic access$0(Lcom/maxdev/systemui/WeatherText;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherText;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 49
    iget-boolean v1, p0, Lcom/maxdev/systemui/WeatherText;->mAttached:Z

    if-nez v1, :cond_0

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/maxdev/systemui/WeatherText;->mAttached:Z

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.pac.INTENT_WEATHER_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherText;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/maxdev/systemui/WeatherText;->weatherReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/maxdev/systemui/WeatherText;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 54
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 59
    iget-boolean v0, p0, Lcom/maxdev/systemui/WeatherText;->mAttached:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherText;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/maxdev/systemui/WeatherText;->weatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maxdev/systemui/WeatherText;->mAttached:Z

    .line 63
    :cond_0
    return-void
.end method

.method protected updateSettings()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 99
    iget-object v3, p0, Lcom/maxdev/systemui/WeatherText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "pref_maxdev_weather_show_location"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 104
    iput-boolean v4, p0, Lcom/maxdev/systemui/WeatherText;->mShowLocation:Z

    .line 110
    :goto_0
    const-string v3, "pref_maxdev_use_weather"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 111
    .local v1, useWeather:I
    const-string v3, "pref_maxdev_weather_style"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 112
    .local v2, weather_style:I
    if-ne v1, v4, :cond_2

    .line 113
    if-nez v2, :cond_1

    .line 114
    invoke-virtual {p0, v5}, Lcom/maxdev/systemui/WeatherText;->setVisibility(I)V

    .line 122
    :goto_1
    return-void

    .line 106
    .end local v1           #useWeather:I
    .end local v2           #weather_style:I
    :cond_0
    iput-boolean v5, p0, Lcom/maxdev/systemui/WeatherText;->mShowLocation:Z

    goto :goto_0

    .line 116
    .restart local v1       #useWeather:I
    .restart local v2       #weather_style:I
    :cond_1
    invoke-virtual {p0, v6}, Lcom/maxdev/systemui/WeatherText;->setVisibility(I)V

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0, v6}, Lcom/maxdev/systemui/WeatherText;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateWeather(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 66
    iget-boolean v1, p0, Lcom/maxdev/systemui/WeatherText;->mShowLocation:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "city"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    const-string v2, "condition"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, wText:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/maxdev/systemui/WeatherText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void

    .line 67
    .end local v0           #wText:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    const-string v2, "condition"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
