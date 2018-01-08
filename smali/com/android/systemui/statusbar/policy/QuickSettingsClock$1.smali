.class Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingsClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 52
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLive:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$000(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    const-string v7, "time-zone"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, tz:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 55
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    #setter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$102(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 60
    .end local v4           #tz:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v2, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 63
    .local v2, newLocale:Ljava/util/Locale;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLocale:Ljava/util/Locale;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$200(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 64
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #setter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLocale:Ljava/util/Locale;
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$202(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;Ljava/util/Locale;)Ljava/util/Locale;

    .line 65
    new-instance v7, Ljava/text/DateFormatSymbols;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLocale:Ljava/util/Locale;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$200(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, ampm:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAmPm:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$300(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

    move-result-object v7

    aget-object v8, v1, v6

    aget-object v9, v1, v5

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->setAmPmString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAmPm:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$300(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mFormat:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$400(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "h:mm"

    if-ne v8, v9, :cond_4

    :goto_1
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->setShowAmPm(Z)V

    .line 69
    .end local v1           #ampm:[Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/Locale;

    const-string v5, "ru"

    const-string v6, "RU"

    invoke-direct {v3, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v3, ruLocate:Ljava/util/Locale;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mLocale:Ljava/util/Locale;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$200(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAmPm:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$300(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

    move-result-object v5

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mAmPm:Lcom/android/systemui/statusbar/policy/AsusClockTextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->access$500(Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;)Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    move-result-object v5

    const/high16 v6, 0x41e8

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->setTextSize(F)V

    .line 74
    .end local v2           #newLocale:Ljava/util/Locale;
    .end local v3           #ruLocate:Ljava/util/Locale;
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$700(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void

    .line 57
    .end local v0           #action:Ljava/lang/String;
    .restart local v4       #tz:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    #setter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$102(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    goto/16 :goto_0

    .end local v4           #tz:Ljava/lang/String;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #ampm:[Ljava/lang/String;
    .restart local v2       #newLocale:Ljava/util/Locale;
    :cond_4
    move v5, v6

    .line 67
    goto :goto_1

    .line 71
    .end local v1           #ampm:[Ljava/lang/String;
    .restart local v3       #ruLocate:Ljava/util/Locale;
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAmPm:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$300(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

    move-result-object v5

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mAmPm:Lcom/android/systemui/statusbar/policy/AsusClockTextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->access$500(Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;)Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->mAmPm:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$300(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

    move-result-object v6

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mAmPm:Lcom/android/systemui/statusbar/policy/AsusClockTextView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->access$500(Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;)Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->getProperties()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->setTextSize(F)V

    goto :goto_2
.end method
