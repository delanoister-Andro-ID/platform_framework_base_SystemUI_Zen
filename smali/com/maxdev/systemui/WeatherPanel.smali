.class public Lcom/maxdev/systemui/WeatherPanel;
.super Landroid/widget/FrameLayout;
.source "WeatherPanel.java"


# static fields
.field public static final EXTRA_CITY:Ljava/lang/String; = "city"

.field public static final EXTRA_CONDITION:Ljava/lang/String; = "condition"

.field public static final EXTRA_CONDITION_CODE:Ljava/lang/String; = "condition_code"

.field public static final EXTRA_FORECAST_DATE:Ljava/lang/String; = "forecast_date"

.field public static final EXTRA_HIGH:Ljava/lang/String; = "todays_high"

.field public static final EXTRA_HUMIDITY:Ljava/lang/String; = "humidity"

.field public static final EXTRA_LAST_UPDATE:Ljava/lang/String; = "datestamp"

.field public static final EXTRA_LOW:Ljava/lang/String; = "todays_low"

.field public static final EXTRA_TEMP:Ljava/lang/String; = "temp"

.field public static final EXTRA_WIND:Ljava/lang/String; = "wind"

.field private static final TAG:Ljava/lang/String; = "WeatherPanel"


# instance fields
.field private mAttached:Z

.field private mCity:Landroid/widget/TextView;

.field private mCondition:Landroid/widget/TextView;

.field private mConditionImage:Landroid/widget/ImageView;

.field private mCondition_code:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentTemp:Landroid/widget/TextView;

.field private mForecastDate:Landroid/widget/TextView;

.field private mHighTemp:Landroid/widget/TextView;

.field private mHumidity:Landroid/widget/TextView;

.field private mLastUpdate:Landroid/widget/TextView;

.field private mLowTemp:Landroid/widget/TextView;

.field private mShowLocation:Z

.field private mSlash:Landroid/widget/TextView;

.field private mWinds:Landroid/widget/TextView;

.field weatherReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mCondition_code:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/maxdev/systemui/WeatherPanel$1;

    invoke-direct {v0, p0}, Lcom/maxdev/systemui/WeatherPanel$1;-><init>(Lcom/maxdev/systemui/WeatherPanel;)V

    iput-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->weatherReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    iput-object p1, p0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    .line 151
    return-void
.end method

.method private updateCityVisibility()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mCity:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mShowLocation:Z

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mCity:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mCity:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 17

    .prologue
    .line 155
    invoke-super/range {p0 .. p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "high_temp"

    const-string v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 157
    .local v6, resIdHighTemp:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "low_temp"

    const-string v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 158
    .local v9, resIdLowTemp:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "current_temp"

    const-string v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 159
    .local v4, resIdCurrentTemp:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "city"

    const-string v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 160
    .local v2, resIdCity:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "humidity"

    const-string v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 161
    .local v7, resIdHumidity:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "winds"

    const-string v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 162
    .local v11, resIdWinds:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "condition"

    const-string v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 163
    .local v12, resIdcondition:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "condition_image"

    const-string v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 164
    .local v3, resIdConditionImage:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "weatherpanel_slash"

    const-string v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 165
    .local v10, resIdSlash:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "lastupdate"

    const-string v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 166
    .local v8, resIdLastUpdate:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "forecast"

    const-string v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 167
    .local v5, resIdForecast:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/maxdev/systemui/WeatherPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mHighTemp:Landroid/widget/TextView;

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/maxdev/systemui/WeatherPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mLowTemp:Landroid/widget/TextView;

    .line 169
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/maxdev/systemui/WeatherPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mCurrentTemp:Landroid/widget/TextView;

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/maxdev/systemui/WeatherPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mCity:Landroid/widget/TextView;

    .line 171
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/maxdev/systemui/WeatherPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mHumidity:Landroid/widget/TextView;

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/maxdev/systemui/WeatherPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mWinds:Landroid/widget/TextView;

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/maxdev/systemui/WeatherPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mCondition:Landroid/widget/TextView;

    .line 174
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/maxdev/systemui/WeatherPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mConditionImage:Landroid/widget/ImageView;

    .line 175
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/maxdev/systemui/WeatherPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mSlash:Landroid/widget/TextView;

    .line 176
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/maxdev/systemui/WeatherPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mLastUpdate:Landroid/widget/TextView;

    .line 177
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/maxdev/systemui/WeatherPanel;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mForecastDate:Landroid/widget/TextView;

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mForecastDate:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mAttached:Z

    if-nez v13, :cond_0

    .line 181
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mAttached:Z

    .line 182
    new-instance v1, Landroid/content/IntentFilter;

    const-string v13, "com.pac.INTENT_WEATHER_UPDATE"

    invoke-direct {v1, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/maxdev/systemui/WeatherPanel;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/maxdev/systemui/WeatherPanel;->weatherReceiver:Landroid/content/BroadcastReceiver;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/maxdev/systemui/WeatherPanel;->getHandler()Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v1, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/maxdev/systemui/WeatherPanel;->updateSettings()V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/maxdev/systemui/WeatherPanel;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 187
    new-instance v13, Lcom/maxdev/systemui/WeatherPanel$2;

    invoke-virtual/range {p0 .. p0}, Lcom/maxdev/systemui/WeatherPanel;->getHandler()Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/maxdev/systemui/WeatherPanel$2;-><init>(Lcom/maxdev/systemui/WeatherPanel;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContentObserver:Landroid/database/ContentObserver;

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 194
    const-string v14, "pref_maxdev_weather_show_location"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContentObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    .line 193
    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 196
    const-string v14, "pref_maxdev_use_weather"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContentObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    .line 195
    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 198
    const-string v14, "pref_maxdev_weather_style"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContentObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    .line 197
    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/maxdev/systemui/WeatherPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 200
    const-string v14, "pref_maxdev_weather_text_color"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/maxdev/systemui/WeatherPanel;->mContentObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    .line 199
    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 207
    iget-boolean v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mAttached:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/maxdev/systemui/WeatherPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->weatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mAttached:Z

    .line 210
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mCurrentTemp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mCurrentTemp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mHighTemp:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mHighTemp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mLowTemp:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mLowTemp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mCity:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mCity:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mHumidity:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mHumidity:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mWinds:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mWinds:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    :cond_5
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mCondition:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 139
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mCondition:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mSlash:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 141
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mSlash:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mLastUpdate:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 143
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mLastUpdate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    :cond_8
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mForecastDate:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel;->mForecastDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    :cond_9
    return-void
.end method

.method public updateSettings()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 61
    iget-object v2, p0, Lcom/maxdev/systemui/WeatherPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 62
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "pref_maxdev_weather_show_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 63
    iput-boolean v3, p0, Lcom/maxdev/systemui/WeatherPanel;->mShowLocation:Z

    .line 67
    :goto_0
    const-string v2, "pref_maxdev_use_weather"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 68
    const-string v2, "pref_maxdev_weather_style"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 69
    invoke-virtual {p0, v4}, Lcom/maxdev/systemui/WeatherPanel;->setVisibility(I)V

    .line 77
    :goto_1
    const-string v2, "pref_maxdev_weather_text_color"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, colorss:I
    invoke-virtual {p0, v0}, Lcom/maxdev/systemui/WeatherPanel;->setTextColor(I)V

    .line 79
    invoke-direct {p0}, Lcom/maxdev/systemui/WeatherPanel;->updateCityVisibility()V

    .line 80
    return-void

    .line 65
    .end local v0           #colorss:I
    :cond_0
    iput-boolean v4, p0, Lcom/maxdev/systemui/WeatherPanel;->mShowLocation:Z

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0, v5}, Lcom/maxdev/systemui/WeatherPanel;->setVisibility(I)V

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p0, v5}, Lcom/maxdev/systemui/WeatherPanel;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateWeather(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 94
    const-string v1, "condition_code"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mCondition_code:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mCurrentTemp:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mCurrentTemp:Landroid/widget/TextView;

    const-string v2, "temp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mHighTemp:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mHighTemp:Landroid/widget/TextView;

    const-string v2, "todays_high"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mLowTemp:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mLowTemp:Landroid/widget/TextView;

    const-string v2, "todays_low"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mCity:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mCity:Landroid/widget/TextView;

    const-string v2, "city"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mHumidity:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 104
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mHumidity:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Humidity : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "humidity"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mWinds:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mWinds:Landroid/widget/TextView;

    const-string v2, "wind"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_5
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mCondition:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 108
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mCondition:Landroid/widget/TextView;

    const-string v2, "condition"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_6
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mLastUpdate:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 110
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mLastUpdate:Landroid/widget/TextView;

    const-string v2, "datestamp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_7
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mForecastDate:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 112
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mForecastDate:Landroid/widget/TextView;

    const-string v2, "forecast_date"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_8
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mConditionImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    .line 114
    const/16 v0, 0x64

    .line 116
    .local v0, level:I
    :try_start_0
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mCondition_code:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/maxdev/systemui/WeatherPanel;->mConditionImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 121
    .end local v0           #level:I
    :cond_9
    invoke-direct {p0}, Lcom/maxdev/systemui/WeatherPanel;->updateCityVisibility()V

    .line 122
    return-void

    .line 117
    .restart local v0       #level:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method
