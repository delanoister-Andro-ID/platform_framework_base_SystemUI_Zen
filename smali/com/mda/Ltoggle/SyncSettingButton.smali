.class public final Lcom/mda/Ltoggle/SyncSettingButton;
.super Lcom/mda/Ltoggle/QuickSettingButton;
.source "SyncSettingButton.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mda/Ltoggle/SyncSettingButton$SyncReceiver;
    }
.end annotation


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusChangeListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mda/Ltoggle/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/mda/Ltoggle/SyncSettingButton$SyncReceiver;

    invoke-direct {v1, p0}, Lcom/mda/Ltoggle/SyncSettingButton$SyncReceiver;-><init>(Lcom/mda/Ltoggle/SyncSettingButton;)V

    iput-object v1, p0, Lcom/mda/Ltoggle/SyncSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "android.settings.SYNC_SETTINGS"

    iput-object v1, p0, Lcom/mda/Ltoggle/QuickSettingButton;->mAction:Ljava/lang/String;

    return-void
.end method

.method private setSyncEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mda/Ltoggle/SyncSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    :cond_0
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_1
    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 6

    .prologue
    .line 67
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 68
    .local v4, textColor:I
    invoke-virtual {p0}, Lcom/mda/Ltoggle/SyncSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 71
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/SyncSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, rootView:Landroid/view/View;
    const v3, 0x7f0b00b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mda/Ltoggle/SyncSettingButton;->getActivateStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 82
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mda/Ltoggle/SyncSettingButton;->setTextColor(I)V

    .line 84
    return-void

    .line 74
    :pswitch_0
    const v1, 0x7f020236

    .line 76
    const v4, 0x7f0c0018

    goto :goto_0

    .line 78
    :pswitch_1
    const v1, 0x7f020235

    .line 79
    const v4, 0x7f0c0017

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/mda/Ltoggle/SyncSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/SyncSettingButton;->setActivateStatus(I)V

    :cond_1
    invoke-direct {p0}, Lcom/mda/Ltoggle/SyncSettingButton;->updateIconsAndTextColor()V

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    const-string v0, "SyncSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mda/Ltoggle/SyncSettingButton;->setSyncEnabled(Z)V

    invoke-direct {p0}, Lcom/mda/Ltoggle/SyncSettingButton;->updateStatus()V

    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    const-string v0, "SyncSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mda/Ltoggle/SyncSettingButton;->setSyncEnabled(Z)V

    invoke-direct {p0}, Lcom/mda/Ltoggle/SyncSettingButton;->updateStatus()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onAttachedToWindow()V

    const-string v0, "SyncSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mda/Ltoggle/SyncSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mda/Ltoggle/SyncSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-static {v1, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/mda/Ltoggle/SyncSettingButton;->mStatusChangeListener:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mda/Ltoggle/SyncSettingButton;->updateStatus()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/mda/Ltoggle/QuickSettingButton;->onDetachedFromWindow()V

    const-string v0, "SyncSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mda/Ltoggle/SyncSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mda/Ltoggle/SyncSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    iget-object v0, p0, Lcom/mda/Ltoggle/SyncSettingButton;->mStatusChangeListener:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0
    .parameter "which"

    invoke-direct {p0}, Lcom/mda/Ltoggle/SyncSettingButton;->updateStatus()V

    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    const v0, 0x7f06014d

    invoke-virtual {p0, v0}, Lcom/mda/Ltoggle/SyncSettingButton;->setText(I)V

    return-void
.end method
