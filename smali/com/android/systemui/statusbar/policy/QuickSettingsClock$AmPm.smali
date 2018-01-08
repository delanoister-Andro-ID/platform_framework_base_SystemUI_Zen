.class public Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;
.super Ljava/lang/Object;
.source "QuickSettingsClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Lcom/android/systemui/statusbar/policy/AsusClockTextView;

.field private mAmString:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPmString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter "parent"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    const v2, 0x7f0b005e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mAmPm:Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    .line 89
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, ampm:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mAmString:Ljava/lang/String;

    .line 91
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mPmString:Ljava/lang/String;

    .line 92
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ru"

    const-string v3, "RU"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v1, ruLocate:Ljava/util/Locale;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mAmPm:Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    const/high16 v3, 0x41e8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->setTextSize(F)V

    .line 94
    :cond_0
    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;)Lcom/android/systemui/statusbar/policy/AsusClockTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mAmPm:Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    return-object v0
.end method


# virtual methods
.method setAmPmString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "am"
    .parameter "pm"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mAmString:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mPmString:Ljava/lang/String;

    .line 113
    return-void
.end method

.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mAmPm:Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;->mAmPm:Lcom/android/systemui/statusbar/policy/AsusClockTextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->setVisibility(I)V

    .line 104
    return-void

    .line 103
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
