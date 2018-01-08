.class public Lcom/android/systemui/statusbar/policy/AsusWifiLabel;
.super Landroid/widget/TextView;
.source "AsusWifiLabel.java"


# instance fields
.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mParent:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

.field private mWifiConnected:Z

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mWifiConnected:Z

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel$1;-><init>(Lcom/android/systemui/statusbar/policy/AsusWifiLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->updateWifiName()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/AsusWifiLabel;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->updateWifiState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/AsusWifiLabel;)Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mParent:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    return-object v0
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .parameter "info"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, ssid:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 132
    .end local v3           #ssid:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 126
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 127
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 128
    .local v1, net:Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 129
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 132
    .end local v1           #net:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 143
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 148
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 144
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 145
    .restart local v0       #length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 146
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 97
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 99
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mWifiConnected:Z

    .line 101
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mWifiConnected:Z

    if-eqz v3, :cond_4

    .line 103
    const-string v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 104
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 107
    :cond_0
    const/4 v2, 0x0

    .line 108
    .local v2, ssid:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v2

    .line 111
    :cond_1
    if-eqz v2, :cond_2

    .line 112
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mWifiSsid:Ljava/lang/String;

    .line 117
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    .end local v2           #ssid:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->updateWifiName()V

    .line 118
    return-void

    .line 99
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 115
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mWifiSsid:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 71
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mAttached:Z

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mAttached:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mAttached:Z

    .line 86
    :cond_0
    return-void
.end method

.method public setMyParent(Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mParent:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    .line 65
    return-void
.end method

.method updateWifiName()V
    .locals 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mWifiSsid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
