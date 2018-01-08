.class public Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsBluetoothController.java"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCurrentUser:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 3
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 28
    const v2, 0x7f06000b

    iput v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mCheckText:I

    .line 29
    const v2, 0x7f06000c

    iput v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mToastTextOn:I

    .line 30
    const v2, 0x7f06000d

    iput v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mToastTextOff:I

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .local v1, filter2:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mCurrentUser:I

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mCurrentUser:I

    return p1
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 57
    .local v0, isAirplaneMode:Z
    :cond_0
    if-eqz v0, :cond_2

    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, toggleable:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 70
    .end local v1           #toggleable:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 64
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 65
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_3

    .line 66
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 67
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 70
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 5
    .parameter "intent"

    .prologue
    const/high16 v4, -0x8000

    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v3

    .line 103
    :goto_0
    return-object v3

    .line 78
    :cond_0
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, bondState:I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_2

    .line 82
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v3, v4, :cond_1

    .line 83
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 85
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 89
    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 92
    .end local v1           #bondState:I
    :cond_3
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, recieved_state:I
    const/16 v3, 0xc

    if-ne v2, v3, :cond_4

    .line 94
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 96
    :cond_4
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 97
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 100
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v3, v4, :cond_6

    .line 101
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 103
    :cond_6
    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected setMode(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mCurrentUser:I

    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController$2;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->mCurrentUser:I

    invoke-direct {v2, p0, v3, p1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController$2;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;IZ)V

    invoke-static {v0, v1, v2}, Lcom/android/systemui/PerUserService;->connect(Landroid/content/Context;ILcom/android/systemui/PerUserService$Connection;)V

    .line 117
    const/4 v0, 0x1

    return v0
.end method
