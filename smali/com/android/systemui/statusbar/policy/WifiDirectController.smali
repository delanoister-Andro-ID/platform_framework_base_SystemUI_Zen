.class public Lcom/android/systemui/statusbar/policy/WifiDirectController;
.super Landroid/content/BroadcastReceiver;
.source "WifiDirectController.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mIconViews:Ljava/util/ArrayList;

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mEnabled:Z

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiDirectController;->refreshViews()V

    .line 33
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mEnabled:Z

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiDirectController;->refreshViews()V

    .line 52
    :cond_0
    return-void

    .line 48
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mEnabled:Z

    goto :goto_0
.end method

.method public refreshViews()V
    .locals 4

    .prologue
    .line 61
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 63
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 64
    .local v2, v:Landroid/widget/ImageView;
    const v3, 0x7f02015c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mEnabled:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 67
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method
