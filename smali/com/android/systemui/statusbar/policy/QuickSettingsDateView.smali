.class public final Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;
.super Landroid/widget/TextView;
.source "QuickSettingsDateView.java"


# instance fields
.field private mAttachedToWindow:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTextSize:I

.field private mUpdating:Z

.field private mWindowVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->updateClock()V

    return-void
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 110
    move-object v1, p0

    .line 112
    .local v1, v:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const/4 v2, 0x0

    .line 119
    :goto_1
    return v2

    .line 115
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 116
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 117
    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 119
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setUpdates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mAttachedToWindow:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mWindowVisible:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 126
    .local v1, update:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mUpdating:Z

    if-eq v1, v2, :cond_0

    .line 127
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mUpdating:Z

    .line 128
    if-eqz v1, :cond_2

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->updateClock()V

    .line 140
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_1
    return-void

    .line 125
    .end local v1           #update:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 137
    .restart local v1       #update:Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method

.method private final updateClock()V
    .locals 8

    .prologue
    .line 97
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07005b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mTextSize:I

    .line 98
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mTextSize:I

    int-to-float v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->setTextSize(IF)V

    .line 99
    const-string v0, "E MMM d"

    .line 100
    .local v0, dateFormat:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 101
    .local v2, l:Ljava/util/Locale;
    const-string v5, "E MMM d"

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, fmt:Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 103
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, str:Ljava/lang/String;
    const-string v5, ","

    const-string v6, "\'"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\'"

    const-string v7, ","

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mAttachedToWindow:Z

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->setUpdates()V

    .line 68
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mAttachedToWindow:Z

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->setUpdates()V

    .line 75
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->setUpdates()V

    .line 88
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 80
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->mWindowVisible:Z

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDateView;->setUpdates()V

    .line 82
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
