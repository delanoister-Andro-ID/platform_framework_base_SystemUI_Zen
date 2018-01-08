.class Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkStatsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkStatsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkStatsView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    .line 84
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 85
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$300(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_network_stats"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    const-string v1, "status_bar_network_stats_update_frequency"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    const-string v1, "status_bar_network_usage_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    const-string v1, "status_bar_network_hide"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->onChange(Z)V

    .line 98
    return-void
.end method

.method public onChange(Z)V
    .locals 12
    .parameter "selfChange"

    .prologue
    .line 107
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$500(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 109
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 110
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 112
    .local v5, networkAvailable:Z
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$600(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 113
    .local v6, pm:Landroid/os/PowerManager;
    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 115
    .local v3, isScreenOn:Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$700(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "status_bar_network_stats"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    const/4 v7, 0x1

    :goto_1
    #setter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mActivated:Z
    invoke-static {v8, v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$002(Lcom/android/systemui/statusbar/policy/NetworkStatsView;Z)Z

    .line 119
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$900(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "status_bar_network_stats_update_frequency"

    const-wide/16 v10, 0x1f4

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mRefreshInterval:J
    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$802(Lcom/android/systemui/statusbar/policy/NetworkStatsView;J)J

    .line 123
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "status_bar_network_usage_color"

    const v9, -0xcc4a1a

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 126
    .local v2, defaultColor:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "status_bar_network_usage_color"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 129
    .local v4, mStatusBarNetworkColor:I
    const/high16 v7, -0x8000

    if-eq v4, v7, :cond_0

    const/4 v7, -0x2

    if-ne v4, v7, :cond_1

    .line 132
    :cond_0
    move v4, v2

    .line 135
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mTextViewTx:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mTextViewRx:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "status_bar_network_hide"

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    const/4 v7, 0x1

    :goto_2
    #setter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mNetStatsHide:Z
    invoke-static {v8, v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$1402(Lcom/android/systemui/statusbar/policy/NetworkStatsView;Z)Z

    .line 141
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->updateStats()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$200(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)V

    .line 142
    return-void

    .line 110
    .end local v2           #defaultColor:I
    .end local v3           #isScreenOn:Z
    .end local v4           #mStatusBarNetworkColor:I
    .end local v5           #networkAvailable:Z
    .end local v6           #pm:Landroid/os/PowerManager;
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 115
    .restart local v3       #isScreenOn:Z
    .restart local v5       #networkAvailable:Z
    .restart local v6       #pm:Landroid/os/PowerManager;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 138
    .restart local v2       #defaultColor:I
    .restart local v4       #mStatusBarNetworkColor:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public unobserver()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$400(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    return-void
.end method
