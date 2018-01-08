.class public Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsAutoSyncController.java"


# instance fields
.field private mCurrentUser:I

.field private final mHandler:Landroid/os/Handler;

.field private mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 3
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 22
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 38
    const v1, 0x7f060008

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mCheckText:I

    .line 39
    const v1, 0x7f060009

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mToastTextOn:I

    .line 40
    const v1, 0x7f06000a

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mToastTextOff:I

    .line 41
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$2;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mCurrentUser:I

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->updateStatus()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->updateStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    return-object p1
.end method

.method private updateStatus()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mCurrentUser:I

    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mCurrentUser:I

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;I)V

    invoke-static {v0, v1, v2}, Lcom/android/systemui/PerUserService;->connect(Landroid/content/Context;ILcom/android/systemui/PerUserService$Connection;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    return-object v0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1
    .parameter "intent"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mStatusChangeListenerHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method

.method protected setMode(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mCurrentUser:I

    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$4;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mCurrentUser:I

    invoke-direct {v2, p0, v3, p1}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$4;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;IZ)V

    invoke-static {v0, v1, v2}, Lcom/android/systemui/PerUserService;->connect(Landroid/content/Context;ILcom/android/systemui/PerUserService$Connection;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method
