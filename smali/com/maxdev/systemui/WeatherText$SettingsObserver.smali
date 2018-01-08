.class Lcom/maxdev/systemui/WeatherText$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WeatherText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maxdev/systemui/WeatherText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maxdev/systemui/WeatherText;


# direct methods
.method constructor <init>(Lcom/maxdev/systemui/WeatherText;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/maxdev/systemui/WeatherText$SettingsObserver;->this$0:Lcom/maxdev/systemui/WeatherText;

    .line 74
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 75
    invoke-virtual {p0}, Lcom/maxdev/systemui/WeatherText$SettingsObserver;->observe()V

    .line 76
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherText$SettingsObserver;->this$0:Lcom/maxdev/systemui/WeatherText;

    #getter for: Lcom/maxdev/systemui/WeatherText;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maxdev/systemui/WeatherText;->access$0(Lcom/maxdev/systemui/WeatherText;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "pref_maxdev_use_weather"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    const-string v1, "pref_maxdev_weather_show_location"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    const-string v1, "pref_maxdev_weather_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherText$SettingsObserver;->this$0:Lcom/maxdev/systemui/WeatherText;

    invoke-virtual {v1}, Lcom/maxdev/systemui/WeatherText;->updateSettings()V

    .line 90
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherText$SettingsObserver;->this$0:Lcom/maxdev/systemui/WeatherText;

    invoke-virtual {v0}, Lcom/maxdev/systemui/WeatherText;->updateSettings()V

    .line 95
    return-void
.end method
