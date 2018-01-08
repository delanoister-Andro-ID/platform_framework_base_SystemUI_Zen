.class public Lcom/android/systemui/statusbar/policy/QuickSettingsClock;
.super Landroid/widget/LinearLayout;
.source "QuickSettingsClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickSettingsClock$FormatChangeObserver;,
        Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;
    }
.end annotation


# instance fields
.field private mAmPm:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClock:Lcom/android/systemui/statusbar/policy/AsusClock;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mLocale:Ljava/util/Locale;

.field private mTimeDisplay:Lcom/android/systemui/statusbar/policy/AsusClockTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    new-instance v0, Lcom/android/systemui/statusbar/policy/AsusClock;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/policy/AsusClock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mClock:Lcom/android/systemui/statusbar/policy/AsusClock;

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLive:Z

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v0, Lcom/android/systemui/statusbar/policy/AsusClock;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/AsusClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mClock:Lcom/android/systemui/statusbar/policy/AsusClock;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAmPm:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->updateTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mFormat:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAmPm:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->setShowAmPm(Z)V

    .line 205
    return-void

    .line 203
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 194
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mClock:Lcom/android/systemui/statusbar/policy/AsusClock;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/AsusClock;->getClockTime()Ljava/lang/CharSequence;

    move-result-object v0

    .line 198
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mTimeDisplay:Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAmPm:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->setIsMorning(Z)V

    .line 200
    return-void

    .line 199
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 149
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 151
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mCalendar:Ljava/util/Calendar;

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 154
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAttached:Z

    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 157
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 166
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$FormatChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$FormatChangeObserver;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 177
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAttached:Z

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 141
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mTimeDisplay:Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAmPm:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->setDateFormat()V

    .line 145
    return-void
.end method
