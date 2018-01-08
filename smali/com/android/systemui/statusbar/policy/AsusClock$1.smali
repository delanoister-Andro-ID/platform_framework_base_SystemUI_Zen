.class Lcom/android/systemui/statusbar/policy/AsusClock$1;
.super Landroid/content/BroadcastReceiver;
.source "AsusClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AsusClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AsusClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AsusClock;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusClock$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, tz:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusClock$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusClock;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    #setter for: Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/AsusClock;->access$002(Lcom/android/systemui/statusbar/policy/AsusClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 128
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusClock$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusClock;

    #getter for: Lcom/android/systemui/statusbar/policy/AsusClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/AsusClock;->access$100(Lcom/android/systemui/statusbar/policy/AsusClock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusClock$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusClock;

    #getter for: Lcom/android/systemui/statusbar/policy/AsusClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/AsusClock;->access$100(Lcom/android/systemui/statusbar/policy/AsusClock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusClock$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusClock;

    #getter for: Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/AsusClock;->access$000(Lcom/android/systemui/statusbar/policy/AsusClock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 139
    .end local v2           #tz:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AsusClock;->access$400()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    const-string v3, "Clock"

    const-string v4, "TIMEZONE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusClock$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusClock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AsusClock;->updateClock()V

    .line 151
    return-void

    .line 131
    :cond_2
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusClock$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusClock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AsusClock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 133
    .local v1, newLocale:Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusClock$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusClock;

    #getter for: Lcom/android/systemui/statusbar/policy/AsusClock;->mLocale:Ljava/util/Locale;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/AsusClock;->access$200(Lcom/android/systemui/statusbar/policy/AsusClock;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusClock$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusClock;

    #setter for: Lcom/android/systemui/statusbar/policy/AsusClock;->mLocale:Ljava/util/Locale;
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/AsusClock;->access$202(Lcom/android/systemui/statusbar/policy/AsusClock;Ljava/util/Locale;)Ljava/util/Locale;

    .line 135
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusClock$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusClock;

    const-string v4, ""

    #setter for: Lcom/android/systemui/statusbar/policy/AsusClock;->mClockFormatString:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/AsusClock;->access$302(Lcom/android/systemui/statusbar/policy/AsusClock;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 142
    .end local v1           #newLocale:Ljava/util/Locale;
    :cond_3
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    const-string v3, "Clock"

    const-string v4, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    :cond_4
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    const-string v3, "Clock"

    const-string v4, "ACTION_TIME_TICK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    :cond_5
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    const-string v3, "Clock"

    const-string v4, "ACTION_TIME_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
