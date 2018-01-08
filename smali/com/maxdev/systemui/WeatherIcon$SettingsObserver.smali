.class Lcom/maxdev/systemui/WeatherIcon$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WeatherIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maxdev/systemui/WeatherIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maxdev/systemui/WeatherIcon;


# direct methods
.method public constructor <init>(Lcom/maxdev/systemui/WeatherIcon;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "arg0"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/maxdev/systemui/WeatherIcon$SettingsObserver;->this$0:Lcom/maxdev/systemui/WeatherIcon;

    .line 83
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 85
    invoke-virtual {p0}, Lcom/maxdev/systemui/WeatherIcon$SettingsObserver;->observer()V

    .line 86
    return-void
.end method


# virtual methods
.method observer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherIcon$SettingsObserver;->this$0:Lcom/maxdev/systemui/WeatherIcon;

    iget-object v1, v1, Lcom/maxdev/systemui/WeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "pref_maxdev_weather_icon"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    const-string v1, "pref_maxdev_weather_image_icon"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherIcon$SettingsObserver;->this$0:Lcom/maxdev/systemui/WeatherIcon;

    #calls: Lcom/maxdev/systemui/WeatherIcon;->UpdateSettings()V
    invoke-static {v1}, Lcom/maxdev/systemui/WeatherIcon;->access$0(Lcom/maxdev/systemui/WeatherIcon;)V

    .line 97
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 103
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherIcon$SettingsObserver;->this$0:Lcom/maxdev/systemui/WeatherIcon;

    #calls: Lcom/maxdev/systemui/WeatherIcon;->UpdateSettings()V
    invoke-static {v0}, Lcom/maxdev/systemui/WeatherIcon;->access$0(Lcom/maxdev/systemui/WeatherIcon;)V

    .line 104
    return-void
.end method
