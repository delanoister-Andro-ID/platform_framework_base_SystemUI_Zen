.class public Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsNfcController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 2
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 18
    const v1, 0x7f06003a

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;->mCheckText:I

    .line 19
    const v1, 0x7f06003b

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;->mToastTextOn:I

    .line 20
    const v1, 0x7f06003c

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;->mToastTextOff:I

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 3

    .prologue
    .line 28
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 29
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 30
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 36
    :goto_0
    return-object v2

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 33
    .local v1, state:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 34
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 36
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 70
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, state:I
    if-ne v0, v2, :cond_0

    .line 73
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 80
    :goto_0
    return-object v1

    .line 74
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 75
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v1, v2, :cond_2

    .line 78
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 80
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    return-void
.end method

.method protected setMode(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;->mContext:Landroid/content/Context;

    const-string v4, "nfc"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NfcManager;

    .line 46
    .local v2, manager:Landroid/nfc/NfcManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 47
    :cond_0
    if-nez v0, :cond_1

    .line 48
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsNfcController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 50
    :cond_1
    if-eqz p1, :cond_2

    .line 51
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 59
    :goto_0
    const/4 v3, 0x1

    .end local v2           #manager:Landroid/nfc/NfcManager;
    :goto_1
    return v3

    .line 53
    .restart local v2       #manager:Landroid/nfc/NfcManager;
    :cond_2
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v2           #manager:Landroid/nfc/NfcManager;
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    const/4 v3, 0x0

    goto :goto_1
.end method
