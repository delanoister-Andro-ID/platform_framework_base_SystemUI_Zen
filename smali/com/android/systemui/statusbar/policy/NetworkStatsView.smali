.class public Lcom/android/systemui/statusbar/policy/NetworkStatsView;
.super Landroid/widget/LinearLayout;
.source "NetworkStatsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;
    }
.end annotation


# instance fields
.field private mActivated:Z

.field private mAttached:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLastRx:J

.field private mLastTx:J

.field private mLastUpdateTime:J

.field private mNetStatsHide:Z

.field private mRefreshInterval:J

.field mSettingsObserver:Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;

.field private mTextViewRx:Landroid/widget/TextView;

.field private mTextViewTx:Landroid/widget/TextView;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mLastRx:J

    .line 66
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mLastTx:J

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkStatsView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mActivated:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/NetworkStatsView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mActivated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mAttached:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mTextViewTx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mTextViewRx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/NetworkStatsView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mNetStatsHide:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->updateStats()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/NetworkStatsView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mRefreshInterval:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setTextViewSpeed(Landroid/widget/TextView;JF)V
    .locals 8
    .parameter "tv"
    .parameter "speed"
    .parameter "deltaT"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4980

    const/high16 v3, 0x4480

    .line 235
    const-string v1, "B/s"

    .line 236
    .local v1, units:Ljava/lang/String;
    long-to-float v2, p2

    div-float v0, v2, p4

    .line 237
    .local v0, fSpeed:F
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_1

    .line 238
    const-string v1, "MB/s"

    .line 239
    div-float/2addr v0, v4

    .line 245
    :cond_0
    :goto_0
    float-to-int v2, v0

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    const-string v2, "%d %s"

    new-array v3, v7, [Ljava/lang/Object;

    float-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void

    .line 240
    :cond_1
    cmpl-float v2, v0, v3

    if-ltz v2, :cond_0

    .line 241
    const-string v1, "KB/s"

    .line 242
    div-float/2addr v0, v3

    goto :goto_0

    .line 245
    :cond_2
    const-string v2, "%.1f %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateStats()V
    .locals 15

    .prologue
    .line 194
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mActivated:Z

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mAttached:Z

    if-nez v11, :cond_2

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    .line 196
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->setVisibility(I)V

    .line 198
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    :goto_0
    return-void

    .line 202
    :cond_2
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    .line 203
    .local v2, currentBytesTx:J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    .line 204
    .local v0, currentBytesRx:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 205
    .local v4, currentTimeMillis:J
    iget-wide v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mLastTx:J

    sub-long v8, v2, v11

    .line 206
    .local v8, deltaBytesTx:J
    iget-wide v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mLastRx:J

    sub-long v6, v0, v11

    .line 207
    .local v6, deltaBytesRx:J
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mLastTx:J

    .line 208
    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mLastRx:J

    .line 210
    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-gez v11, :cond_3

    .line 211
    const-wide/16 v6, 0x0

    .line 212
    :cond_3
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-gez v11, :cond_4

    .line 213
    const-wide/16 v8, 0x0

    .line 215
    :cond_4
    iget-wide v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mLastUpdateTime:J

    sub-long v11, v4, v11

    long-to-float v11, v11

    const/high16 v12, 0x447a

    div-float v10, v11, v12

    .line 216
    .local v10, deltaT:F
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mLastUpdateTime:J

    .line 217
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mTextViewTx:Landroid/widget/TextView;

    invoke-direct {p0, v11, v8, v9, v10}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->setTextViewSpeed(Landroid/widget/TextView;JF)V

    .line 218
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mTextViewRx:Landroid/widget/TextView;

    invoke-direct {p0, v11, v6, v7, v10}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->setTextViewSpeed(Landroid/widget/TextView;JF)V

    .line 220
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mNetStatsHide:Z

    if-eqz v11, :cond_6

    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-nez v11, :cond_6

    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-nez v11, :cond_6

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_5

    .line 222
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->setVisibility(I)V

    .line 230
    :cond_5
    :goto_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mUpdateRunnable:Ljava/lang/Runnable;

    iget-wide v13, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mRefreshInterval:J

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 225
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_5

    .line 226
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 162
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 163
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mAttached:Z

    if-nez v1, :cond_0

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mAttached:Z

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mUpdateRunnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mRefreshInterval:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->observe()V

    .line 177
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mAttached:Z

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->unobserver()V

    .line 191
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 156
    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mTextViewTx:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mTextViewRx:Landroid/widget/TextView;

    .line 158
    return-void
.end method
